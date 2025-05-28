import random
from typing import List

from .graph import DirectedGraph


def bridge_words(g: DirectedGraph, w1: str, w2: str) -> List[str]:
    """返回 w1→?→w2 的所有桥接词"""
    w1 = w1.lower()
    w2 = w2.lower()
    if w1 not in g.adj or w2 not in g.adj:
        return []

    bridges = [mid for mid in g.out_edges(w1) if w2 in g.out_edges(mid)]
    return bridges


def generate_new_text(g: DirectedGraph, text: str) -> str:
    """按实验要求把桥接词插入到相邻单词之间"""
    words = [w.lower() for w in text.split()]
    if len(words) < 2:
        return text

    out = [words[0]]
    for a, b in zip(words, words[1:]):
        candidates = bridge_words(g, a, b)
        if candidates:
            out.append(random.choice(candidates))
        out.append(b)
    return " ".join(out)
