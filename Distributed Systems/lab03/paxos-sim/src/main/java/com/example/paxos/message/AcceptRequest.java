
package com.example.paxos.message;

import com.example.paxos.Proposal;

public record AcceptRequest(Proposal proposal) {}
