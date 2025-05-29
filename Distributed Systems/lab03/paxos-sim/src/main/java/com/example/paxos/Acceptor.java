package com.example.paxos;

import com.example.paxos.message.*;
import java.util.concurrent.ThreadLocalRandom;

/**
 * Acceptor（接受者）
 *
 * 说明：本类在经典 Paxos 算法中承担“裁判”角色——
 *       对收到的 Prepare / Accept 请求按照协议规则给予回应。
 *       这里额外加入 **丢包（dropRate）+ 随机延迟（maxDelayMs）**
 *       用于实验演示网络不可靠环境下的容错能力。
 *
 * ★ 仅添加中文注释，所有字段 / 方法 / 判断逻辑完全保持不变 ★
 */
public class Acceptor {

    /* ======================== 基础状态 ======================== */

    /** 节点 ID，便于在日志里区分是哪一个 Acceptor */
    private final String id;

    /** 本节点当前“承诺”过的最高提案编号 n ；默认为 -1（未承诺任何提案） */
    private long promised = -1;

    /** 本节点已接受（Accept 阶段成功）的 Proposal，初始为 null */
    private Proposal accepted = null;

    /* ======================== 故障注入参数 ======================== */

    /** 丢包概率（0~1），例如 0.3 表示 30% 的请求会被直接忽略 */
    private final double dropRate;

    /** 最大网络延迟（毫秒），真实延迟为 0 ~ maxDelayMs 之间的随机数 */
    private final int maxDelayMs;

    /* ======================== 构造函数 ======================== */

    public Acceptor(String id, double dropRate, int maxDelayMs) {
        this.id = id;
        this.dropRate = dropRate;
        this.maxDelayMs = maxDelayMs;
    }

    /* ======================== 辅助方法 ======================== */

    /** 是否丢包：按照 dropRate 随机决定本次请求是否被“吞掉” */
    private boolean dropped() {
        return ThreadLocalRandom.current().nextDouble() < dropRate;
    }

    /** 随机网络延迟：最多 maxDelayMs 毫秒，模拟真实网络 RTT */
    private void maybeDelay() {
        try {
            Thread.sleep(ThreadLocalRandom.current().nextInt(maxDelayMs + 1));
        } catch (InterruptedException ignored) {
            // 恢复中断状态，避免吞掉中断
            Thread.currentThread().interrupt();
        }
    }

    /* ======================== Phase 1: Prepare ======================== */

    /**
     * 处理 Proposer 的 Prepare 请求。
     * 规则：如果提案编号 n 大于当前已承诺编号 promised，则承诺 (Promise) 并返回之前已接受的提案；
     *       否则拒绝 (promised=false)。
     *
     * @param req PrepareRequest（只包含提案编号 n）
     * @return    PromiseResponse 或 null（丢包时）
     */
    public PromiseResponse onPrepare(PrepareRequest req) {
        maybeDelay();   // 先随机延迟
        if (dropped()) {                     // 若丢包则返回 null
            System.out.printf("[%s] ✗ drop Prepare%n", id);
            return null;
        }
        if (req.number() > promised) {       // 满足条件：更新 promised，发送 Promise
            promised = req.number();
            return new PromiseResponse(id, true, accepted);
        }
        // 提案编号过小，拒绝
        return new PromiseResponse(id, false, accepted);
    }

    /* ======================== Phase 2: Accept ======================== */

    /**
     * 处理 Proposer 的 Accept 请求。
     * 规则：若提案编号 ≥ promised，则接受并更新 accepted；
     *       否则拒绝。
     *
     * @param req AcceptRequest（携带编号 + 值）
     * @return    AcceptedNotification 或 null（丢包时）
     */
    public AcceptedNotification onAcceptRequest(AcceptRequest req) {
        maybeDelay();   // 先随机延迟
        if (dropped()) {
            System.out.printf("[%s] ✗ drop Accept%n", id);
            return null;
        }
        if (req.proposal().number() >= promised) {
            promised = req.proposal().number();   // 更新 promised
            accepted = req.proposal();            // 记录已接受提案
            return new AcceptedNotification(id, true, accepted);
        }
        // 编号过小，拒绝
        return new AcceptedNotification(id, false, accepted);
    }
}
