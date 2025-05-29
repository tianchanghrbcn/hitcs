
package com.example.paxos;

import com.example.paxos.message.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Collectors;

public class Proposer {
    private static final AtomicLong COUNTER = new AtomicLong(0);
    private final String id;
    private final long timeoutMs;

    public Proposer(String id, long timeoutMs) {
        this.id = id;
        this.timeoutMs = timeoutMs;
    }

    public String propose(String value, List<Acceptor> acceptors, Learner learner) {
        int majority = acceptors.size() / 2 + 1;
        ExecutorService pool = Executors.newCachedThreadPool();

        while (true) {
            long n = COUNTER.incrementAndGet();
            Proposal proposal = new Proposal(n, value);
            System.out.printf("%n[Proposer %s] Round n=%d value=%s%n", id, n, proposal.value());

            // Phase 1: Prepare
            List<Future<PromiseResponse>> futuresPrepare = acceptors.stream()
                    .map(a -> pool.submit(() -> a.onPrepare(new PrepareRequest(n))))
                    .toList();
            List<PromiseResponse> promises = collect(futuresPrepare);

            long okPromises = promises.stream().filter(p -> p != null && p.promised()).count();
            if (okPromises < majority) {
                System.out.printf("[Proposer] Promise majority fail %d/%d → retry%n", okPromises, majority);
                continue;
            }

            // adopt the value of highest-numbered previously accepted proposal, if any
            Optional<Proposal> highestAccepted = promises.stream()
                    .map(PromiseResponse::accepted)
                    .filter(Objects::nonNull)
                    .max(Comparator.comparingLong(Proposal::number));
            if (highestAccepted.isPresent()) {
                proposal = new Proposal(n, highestAccepted.get().value());
            }

            // Phase 2: Accept
            Proposal finalProposal = proposal;
            List<Future<AcceptedNotification>> futuresAccept = acceptors.stream()
                    .map(a -> pool.submit(() -> a.onAcceptRequest(new AcceptRequest(finalProposal))))
                    .toList();
            List<AcceptedNotification> accepts = collect(futuresAccept);

            long okAccepts = accepts.stream().filter(a -> a != null && a.accepted()).count();
            if (okAccepts < majority) {
                System.out.printf("[Proposer] Accept majority fail %d/%d → retry%n", okAccepts, majority);
                continue;
            }

            learner.learn(accepts.stream()
                    .filter(a -> a != null && a.accepted())
                    .collect(Collectors.toList()));
            pool.shutdownNow();
            return proposal.value();
        }
    }

    private <T> List<T> collect(List<Future<T>> futures) {
        List<T> res = new ArrayList<>();
        for (Future<T> f : futures) {
            try {
                res.add(f.get(timeoutMs, TimeUnit.MILLISECONDS));
            } catch (Exception e) {
                res.add(null);
            }
        }
        return res;
    }
}
