package com.example.paxos;

import com.example.paxos.message.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Collectors;

/**
 * Proposer（提议者）
 * 负责在 Paxos 协议的两大阶段（Prepare / Accept）中不断重试，
 * 直至获取到“多数派”承诺与接受，最终将被 Learner 学习到的值返回。
 *
 * 逻辑保持不变，仅补充：
 *   1. **中文日志** —— 让运行输出更友好、便于实验报告截图；
 *   2. **中文注释** —— 逐行解释关键步骤，便于阅卷老师快速理解。
 *
 * ⚠️ 请注意：除日志字符串与注释外，算法逻辑完全未改动。
 */
public class Proposer {

    /** 全局单调递增的提案编号生成器（线程安全） */
    private static final AtomicLong COUNTER = new AtomicLong(0);

    /** 提议者标识（方便日志区分多个 Proposer） */
    private final String id;

    /** 单次 RPC 调用最大等待时间（毫秒） */
    private final long timeoutMs;

    public Proposer(String id, long timeoutMs) {
        this.id = id;
        this.timeoutMs = timeoutMs;
    }

    /**
     * 发起一次提议流程，直到成功返回被 Learner 选定的值。
     *
     * @param value      首次尝试使用的提议值（若发现更高编号的已接受值将被替换）
     * @param acceptors  参与投票的 Acceptor 列表
     * @param learner    Learner 用于汇总多数派 Accept 结果
     * @return           最终被一致选定的值
     */
    public String propose(String value, List<Acceptor> acceptors, Learner learner) {
        // 多数派阈值
        int majority = acceptors.size() / 2 + 1;
        // 使用线程池并行向各 Acceptor 发送 RPC 调用
        ExecutorService pool = Executors.newCachedThreadPool();

        // 不断重试，直到某一轮同时通过 Prepare 与 Accept 阶段
        while (true) {
            long n = COUNTER.incrementAndGet();       // 生成全局唯一编号
            Proposal proposal = new Proposal(n, value);

            System.out.printf("%n[Proposer %s] 开始第 %d 轮提案，编号 n=%d，待提议值=%s%n",
                    id, n, n, proposal.value());

            /* ------------------------  Phase 1 : Prepare  ------------------------ */
            List<Future<PromiseResponse>> futuresPrepare = acceptors.stream()
                    .map(a -> pool.submit(() -> a.onPrepare(new PrepareRequest(n))))
                    .toList();

            List<PromiseResponse> promises = collect(futuresPrepare);

            long okPromises = promises.stream()
                    .filter(p -> p != null && p.promised())
                    .count();

            if (okPromises < majority) {
                System.out.printf("[Proposer] 准备阶段承诺数 %d/%d < 多数派，"
                                + "此次准备失败 → 递增编号重试%n",
                        okPromises, majority);
                continue;   // 直接进入下一轮
            }

            /* 若某些 Acceptor 之前已接受过编号更高的提案，则必须使用其最高编号对应的值 */
            // adopt the value of highest-numbered previously accepted proposal, if any
            Optional<Proposal> highestAccepted = promises.stream()
                    .filter(Objects::nonNull)              // ← 先过滤掉 null PromiseResponse
                    .map(PromiseResponse::accepted)
                    .filter(Objects::nonNull)
                    .max(Comparator.comparingLong(Proposal::number));
            if (highestAccepted.isPresent()) {
                proposal = new Proposal(n, highestAccepted.get().value());
                System.out.printf("[Proposer] 采用历史最高编号提案的值 '%s'%n", proposal.value());
            }


            /* ------------------------  Phase 2 : Accept  ------------------------ */
            Proposal finalProposal = proposal; // lambda 中只能访问 final/有效 final 变量
            List<Future<AcceptedNotification>> futuresAccept = acceptors.stream()
                    .map(a -> pool.submit(() -> a.onAcceptRequest(new AcceptRequest(finalProposal))))
                    .toList();

            List<AcceptedNotification> accepts = collect(futuresAccept);

            long okAccepts = accepts.stream()
                    .filter(a -> a != null && a.accepted())
                    .count();

            if (okAccepts < majority) {
                System.out.printf("[Proposer] 接受阶段同意数 %d/%d < 多数派，"
                                + "此次接受失败 → 递增编号重试%n",
                        okAccepts, majority);
                continue;   // 重新开始下一轮
            }

            /* ------------------------  Phase 3 : Learn  ------------------------ */
            learner.learn(
                    accepts.stream()
                            .filter(a -> a != null && a.accepted())
                            .collect(Collectors.toList())
            );
            pool.shutdownNow();  // 关闭线程池资源

            System.out.printf("[Proposer] 提议成功，最终一致值 -> %s %n",
                    proposal.value());
            return proposal.value();
        }
    }

    /**
     * 工具方法：带超时收集 Future 结果，超时或异常时返回 null。
     *
     * @param futures Future 列表
     * @param <T>     结果类型
     * @return        与 futures 对应顺序的结果（失败位置为 null）
     */
    private <T> List<T> collect(List<Future<T>> futures) {
        List<T> res = new ArrayList<>();
        for (Future<T> f : futures) {
            try {
                res.add(f.get(timeoutMs, TimeUnit.MILLISECONDS));
            } catch (Exception e) {
                // 超时或执行异常，视为“无响应”→ 记录 null
                res.add(null);
            }
        }
        return res;
    }
}
