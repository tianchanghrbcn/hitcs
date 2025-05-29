
package com.example.paxos;

/** Immutable proposal with monotonic number. */
public record Proposal(long number, String value) {}
