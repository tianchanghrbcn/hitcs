
package com.example.paxos.message;

import com.example.paxos.Proposal;

public record PromiseResponse(String from, boolean promised, Proposal accepted) {}
