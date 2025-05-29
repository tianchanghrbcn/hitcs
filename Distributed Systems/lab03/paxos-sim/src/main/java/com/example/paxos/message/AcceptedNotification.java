
package com.example.paxos.message;

import com.example.paxos.Proposal;

public record AcceptedNotification(String from, boolean accepted, Proposal proposal) {}
