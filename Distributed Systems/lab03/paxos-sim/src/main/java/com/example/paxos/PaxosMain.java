package com.example.paxos;

import java.util.List;

/**
 * 实验入口 —— 用于一次性演示 3 组不同丢包率下的 Paxos 运行效果。
 */
public class PaxosMain {

    public static void main(String[] args) {

        /* ---------- 1. 预设多组丢包率 ---------- */
        // 0%   ：完全可靠网络 → 应一次成功
        // 30%  ：中等丢包 → 可能需要重试 1～2 轮
        // 50%  ：高丢包 → 往往多次重试才能成功
        double[] dropRates = {0.0, 0.3, 0.5};

        /* ---------- 2. 逐场景循环 ---------- */
        for (double dr : dropRates) {
            System.out.println("\n==============================");
            System.out.printf("【场景】丢包率 %.0f%%，最大延迟 100 ms%n", dr * 100);

            // ① 创建 3 个 Acceptor，注入相同的丢包概率与最大网络延迟
            List<Acceptor> acceptors = List.of(
                    new Acceptor("A1", dr, 100),
                    new Acceptor("A2", dr, 100),
                    new Acceptor("A3", dr, 100)
            );

            // ② 每轮都重新生成 Learner / Proposer，避免状态串场
            Learner learner = new Learner();
            // timeoutMs = 200 表示单次 RPC 最多等待 200 ms 即视为超时
            Proposer proposer = new Proposer("P1", 200);

            /* ---------- 3. 发起提案并等待共识 ---------- */
            String chosen = proposer.propose("Hello-Paxos", acceptors, learner);

            /* ---------- 4. 打印结果 ---------- */
            System.out.printf("【结果】最终一致值 = %s%n", chosen);
        }

        System.out.println("\n=== 所有场景结束 ===");
    }
}
