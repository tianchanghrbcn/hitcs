
package com.example.paxos;

import com.example.paxos.message.AcceptedNotification;
import java.util.List;

public class Learner {
    public void learn(List<AcceptedNotification> notifications) {
        Proposal p = notifications.get(0).proposal();
        System.out.printf("[Learner] CHOSEN=%s (#%d)%n", p.value(), p.number());
    }
}
