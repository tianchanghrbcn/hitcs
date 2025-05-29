
package com.example.paxos;

import java.util.List;

public class PaxosMain {
    public static void main(String[] args) {
        List<Acceptor> acceptors = List.of(
                new Acceptor("A1", 0.2, 100),
                new Acceptor("A2", 0.2, 100),
                new Acceptor("A3", 0.2, 100)
        );
        Learner learner = new Learner();
        Proposer proposer = new Proposer("P1", 200);
        String chosen = proposer.propose("Hello‑Paxos", acceptors, learner);
        System.out.println("FINAL VALUE → " + chosen);
    }
}
