package com.example.paxos;

/**
 * Proposal（提案）
 *
 * 采用 Java 17 的 record 语法，天然提供：
 *   • 不可变字段（number, value）
 *   • 自动生成构造器、getter、equals/hashCode、toString
 *
 * 字段含义：
 *   number —— 提案编号，必须全局单调递增，保证比较大小即可判断新旧
 *   value  —— 提案携带的业务值（如日志条目、配置等），可任意字符串
 */
public record Proposal(long number, String value) {}
