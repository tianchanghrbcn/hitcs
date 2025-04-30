from __future__ import annotations
import heapq, math, random
from collections import defaultdict
from typing import Dict, Tuple, List
from .graph import DirectedGraph

# ---------- 单路径 Dijkstra ----------
def shortest_path(g: DirectedGraph, s: str, t: str) -> Tuple[float, List[str]]:
    dist = defaultdict(lambda: math.inf, {s: 0.0})
    prev = {}; pq=[(0.0,s)]
    while pq:
        d,v=heapq.heappop(pq)
        if v==t: break
        if d!=dist[v]: continue
        for nbr,w in g.out_edges(v).items():
            nd=d+w
            if nd<dist[nbr]:
                dist[nbr]=nd; prev[nbr]=v
                heapq.heappush(pq,(nd,nbr))
    if math.isinf(dist[t]): return math.inf,[]
    path=[t];  # 回溯
    while path[-1]!=s: path.append(prev[path[-1]])
    return dist[t], list(reversed(path))

# ---------- 多前驱 Dijkstra ----------
def dijkstra_all(g: DirectedGraph, src: str):
    dist=defaultdict(lambda:math.inf,{src:0}); pred=defaultdict(set); pq=[(0,src)]
    while pq:
        d,v=heapq.heappop(pq)
        if d!=dist[v]: continue
        for nbr,w in g.out_edges(v).items():
            nd=d+w
            if nd<dist[nbr]:
                dist[nbr]=nd; pred[nbr]={v}; heapq.heappush(pq,(nd,nbr))
            elif nd==dist[nbr]: pred[nbr].add(v)
    return dist,pred

def enumerate_paths(pred,src,tgt):
    path,stack=[tgt],[(tgt,iter(pred[tgt]))]
    while stack:
        node,it=stack[-1]
        try:
            nxt=next(it); path.append(nxt)
            if nxt==src: yield list(reversed(path)); path.pop()
            else: stack.append((nxt,iter(pred[nxt])))
        except StopIteration:
            stack.pop(); path.pop()

# ---------- PageRank (稀疏优化) ----------
# ---------- PageRank (含 dangling 处理) ----------
def page_rank(g: DirectedGraph, d: float = 0.85,
              eps: float = 1e-6, max_it: int = 100) -> Dict[str, float]:
    nodes = g.nodes()
    N     = len(nodes)
    pr    = {v: 1.0 / N for v in nodes}

    # 预存 1/outdeg ；同时找出悬挂节点
    inv_out = {}
    dangling = []
    for v in nodes:
        out_sum = sum(g.out_edges(v).values())
        if out_sum:
            inv_out[v] = 1 / out_sum
        else:
            dangling.append(v)

    for _ in range(max_it):
        # 悬挂节点贡献：其 PR×d 均匀分给所有节点
        dangling_mass = d * sum(pr[v] for v in dangling) / N

        delta = 0.0
        for v in nodes:
            link_sum = sum(pr[u] * inv_out[u]
                           for u in g.in_edges(v) if u in inv_out)
            new_val = (1 - d) / N + dangling_mass + d * link_sum
            delta  += abs(new_val - pr[v])
            pr[v]   = new_val

        if delta < eps * N:          # 收敛
            break
    return pr


# ---------- 随机游走 ----------
_alias={}
def _alias_tbl(nbrs):
    dst,wt=zip(*nbrs.items()); tot=sum(wt)
    cdf=[]; s=0
    for w in wt: s+=w; cdf.append(s/tot)
    return list(dst),cdf
def random_walk(g: DirectedGraph,start:str|None=None)->List[str]:
    if not g.nodes(): return []
    v=start or random.choice(g.nodes()); path,seen=[v],set()
    while True:
        nbrs=g.out_edges(v)
        if not nbrs: break
        if v not in _alias: _alias[v]=_alias_tbl(nbrs)
        dsts,cdf=_alias[v]; r=random.random()
        k=next(i for i,p in enumerate(cdf) if r<p); nxt=dsts[k]
        if (v,nxt) in seen: break
        seen.add((v,nxt)); path.append(nxt); v=nxt
    return path
