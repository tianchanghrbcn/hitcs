package com.example.paxos;

import com.example.paxos.message.AcceptedNotification;
import java.util.List;

/**
 * Learner（学习者）
 *
 * 职责：在 Paxos 中收集多数派 Acceptor 的 “已接受” 通知，
 *       一旦满足多数原则，即可确定最终一致的提案（Proposal）。
 *
 * 这里采用最简实现：假设一旦被调用，传入的 notifications
 * 已保证来自“同一轮、同一编号”的多数派成功接受。
 * 因此直接取列表第一个元素即可判定最终值。
 */
public class Learner {

    /**
     * 汇总收到的 AcceptedNotification 并输出最终一致结果。
     *
     * @param notifications 来自各 Acceptor 的接受通知（至少多数派，且非空）
     */
    public void learn(List<AcceptedNotification> notifications) {
        // 取第一个即可，因为列表已确保属于同一提案
        Proposal p = notifications.get(0).proposal();
        System.out.printf("[Learner] 已达成一致 → 值=%s, 编号=%d%n",
                p.value(), p.number());
    }
}
