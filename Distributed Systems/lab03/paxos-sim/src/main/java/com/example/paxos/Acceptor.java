
package com.example.paxos;

import com.example.paxos.message.*;
import java.util.concurrent.ThreadLocalRandom;

/** Acceptor with fault injection (drop & delay). */
public class Acceptor {
    private final String id;
    private long promised = -1;
    private Proposal accepted = null;

    private final double dropRate;
    private final int maxDelayMs;

    public Acceptor(String id, double dropRate, int maxDelayMs) {
        this.id = id;
        this.dropRate = dropRate;
        this.maxDelayMs = maxDelayMs;
    }

    private boolean dropped() {
        return ThreadLocalRandom.current().nextDouble() < dropRate;
    }
    private void maybeDelay() {
        try { Thread.sleep(ThreadLocalRandom.current().nextInt(maxDelayMs + 1)); }
        catch (InterruptedException ignored) { Thread.currentThread().interrupt(); }
    }

    public PromiseResponse onPrepare(PrepareRequest req) {
        maybeDelay();
        if (dropped()) {
            System.out.printf("[%s] ✗ drop Prepare%n", id);
            return null;
        }
        if (req.number() > promised) {
            promised = req.number();
            return new PromiseResponse(id, true, accepted);
        }
        return new PromiseResponse(id, false, accepted);
    }

    public AcceptedNotification onAcceptRequest(AcceptRequest req) {
        maybeDelay();
        if (dropped()) {
            System.out.printf("[%s] ✗ drop Accept%n", id);
            return null;
        }
        if (req.proposal().number() >= promised) {
            promised = req.proposal().number();
            accepted = req.proposal();
            return new AcceptedNotification(id, true, accepted);
        }
        return new AcceptedNotification(id, false, accepted);
    }
}
