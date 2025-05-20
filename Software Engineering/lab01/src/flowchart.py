# flowcharts.py  ——  auto-generate 7 module flowcharts as PDF (vector)
import pydot
from pathlib import Path

# ─────────────── flow definitions ──────────────────────────────
flows = {
    # 1. Build graph from text
    "build_graph": [
        ("start", "Start"),
        ("read",  "Read line"),
        ("clean", "Clean non-letters"),
        ("token", "Tokenize"),
        ("loop",  "Loop prev / cur"),
        ("add",   "add_edge(prev,cur)"),
        ("end",   "Finish")
    ],
    "edges_build_graph": [
        ("start","read"), ("read","clean"), ("clean","token"),
        ("token","loop"), ("loop","add"), ("add","loop"),
        ("loop","end")
    ],

    # 2. Show graph
    "show": [
        ("start","Receive show"),
        ("print","Print adjacency"),
        ("ifsave","--save ?"),
        ("draw","Draw (Graphviz)"),
        ("stop","Return shell")
    ],
    "edges_show": [
        ("start","print"), ("print","ifsave"),
        ("ifsave","stop"), ("ifsave","draw"),
        ("draw","stop")
    ],

    # 3. Bridge words
    "bridge": [
        ("start","Input w1 w2"),
        ("chk","Both words in graph?"),
        ("fail","Error / No words"),
        ("scan","Scan w1 → * → w2"),
        ("empty","No bridge"),
        ("out","Return list")
    ],
    "edges_bridge": [
        ("start","chk"), ("chk","fail"), ("chk","scan"),
        ("scan","empty"), ("scan","out")
    ],

    # 4. Generate new text
    "newtext": [
        ("start","Input sentence"),
        ("pair","Pairwise tokens"),
        ("find","Find bridge(s)"),
        ("ins?","Bridge exists?"),
        ("keep","Keep original"),
        ("ins","Insert randomly"),
        ("join","Join & output")
    ],
    "edges_newtext": [
        ("start","pair"), ("pair","find"), ("find","ins?"),
        ("ins?","keep"), ("ins?","ins"), ("keep","join"), ("ins","join")
    ],

    # 5. Shortest path
    "shortest": [
        ("start","Input src dst"),
        ("single?","dst given?"),
        ("dij","Run Dijkstra"),
        ("unreach","Unreachable"),
        ("path","Display / highlight")
    ],
    "edges_shortest": [
        ("start","single?"), ("single?","dij"), ("dij","unreach"),
        ("dij","path")
    ],

    # 6. PageRank
    "pagerank": [
        ("start","Init PR = 1/N"),
        ("loop","Iterate"),
        ("dang","Add dangling mass"),
        ("update","Update PR"),
        ("delta","Δ < ε ?"),
        ("end","Output ranking")
    ],
    "edges_pagerank": [
        ("start","loop"), ("loop","dang"), ("dang","update"),
        ("update","delta"), ("delta","loop"), ("delta","end")
    ],

    # 7. Random walk
    "walk": [
        ("start","Pick start node"),
        ("select","Weighted choice"),
        ("dup?","Edge visited?"),
        ("stop","Terminate"),
        ("add","Append node")
    ],
    "edges_walk": [
        ("start","select"), ("select","dup?"), ("dup?","stop"),
        ("dup?","add"), ("add","select")
    ],
}

# ─────────────── drawing helper ────────────────────────────────
def build_diagram(nodes, edges, filename: str):
    dot = pydot.Dot(graph_type="digraph", rankdir="TB", nodesep="0.4")
    for nid, label in nodes:
        dot.add_node(pydot.Node(nid, label=label,
                                shape="rectangle",
                                style="rounded,filled",
                                fillcolor="#E8F0FE",
                                fontsize="10"))
    for src, dst in edges:
        dot.add_edge(pydot.Edge(src, dst, arrowsize="0.6"))
    out = Path(filename).with_suffix(".pdf")
    dot.write(out, format="pdf")
    print(f"[+] {out} generated")

if __name__ == "__main__":
    build_diagram(flows["build_graph"],
                  flows["edges_build_graph"],
                  "flow_build_graph")

    build_diagram(flows["show"],
                  flows["edges_show"],
                  "flow_show")

    build_diagram(flows["bridge"],
                  flows["edges_bridge"],
                  "flow_bridge")

    build_diagram(flows["newtext"],
                  flows["edges_newtext"],
                  "flow_newtext")

    build_diagram(flows["shortest"],
                  flows["edges_shortest"],
                  "flow_shortest")

    build_diagram(flows["pagerank"],
                  flows["edges_pagerank"],
                  "flow_pagerank")

    build_diagram(flows["walk"],
                  flows["edges_walk"],
                  "flow_walk")
