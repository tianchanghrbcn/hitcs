import pytest
from .graph import DirectedGraph
from .algorithms import shortest_path

# ────────────────────────────────
# 复杂测试图夹具
# ────────────────────────────────
@pytest.fixture
def g():
    g = DirectedGraph()
    # 主干 + 平行 & 环路
    edges = [
        ("S", "T"),
        ("T", "U"),
        ("U", "X"),
        ("S", "V"),
        ("V", "W"),
        ("W", "X"),
        ("T", "W"),
        ("S", "Q"),
        ("Q", "W"),
        ("U", "V"),
        ("V", "Q"),
        ("U", "W"),
    ]
    for u, v in edges:
        g.add_edge(u, v)
    return g


# ────────────────────────────────
# 用例 1 · P1′：最短 S→T→U→X
# ────────────────────────────────
def test_tc1_p1_full(g):
    exp_dist, exp_path = 3.0, ["S", "T", "U", "X"]
    act_dist, act_path = shortest_path(g, "S", "X")
    print(f"\n输入:(S,X) 期望:dist={exp_dist},path={exp_path} \n→ 实际:dist={act_dist},path={act_path}")
    assert act_dist == exp_dist
    assert act_path == exp_path


# ────────────────────────────────
# 用例 2 · P2′：两跳直达 S→V→W（或同距替代）
# ────────────────────────────────
def test_tc2_p2_twohop(g):
    exp_dist = 2.0
    candidates = [["S", "V", "W"], ["S", "T", "W"], ["S", "Q", "W"]]
    act_dist, act_path = shortest_path(g, "S", "W")
    print(f"\n输入:(S,W) 期望:dist={exp_dist},path∈{candidates} \n→ 实际:dist={act_dist},path={act_path}")
    assert act_dist == exp_dist
    assert act_path in candidates


# ────────────────────────────────
# 用例 3 · P3′：起点 = 终点
# ────────────────────────────────
def test_tc3_p3_self(g):
    act_dist, act_path = shortest_path(g, "S", "S")
    print(f"\n输入:(S,S) 期望:dist=0.0,path=['S'] \n→ 实际:dist={act_dist},path={act_path}")
    assert act_dist == 0.0 and act_path == ["S"]


# ────────────────────────────────
# 用例 4 · P4′：不可达
# ────────────────────────────────
def test_tc4_p4_unreach(g):
    g.add_edge("Y", "Z")  # 孤立子图
    act_dist, act_path = shortest_path(g, "S", "Z")
    print(f"\n输入:(S,Z) 期望:dist=inf,path=[] \n→ 实际:dist={act_dist},path={act_path}")
    assert act_dist == float("inf") and act_path == []


# ────────────────────────────────
# 用例 5 · P5′：劣路径触发 d!=dist[v] continue
# ────────────────────────────────

def test_tc5_p5_distcheck(g):
    # 构造较劣路径：S→P→Q→W→X 长度 4 (> 最优 3)
    g.add_edge("S", "P")   # 1
    g.add_edge("P", "Q")   # 1
    g.add_edge("Q", "W")   # 1
    # W→X 已存在于图中，形成完整劣路径

    exp_dist, exp_path = 3.0, ["S", "T", "U", "X"]
    act_dist, act_path = shortest_path(g, "S", "X")
    print(f"\n输入:(S,X) 期望:dist={exp_dist},path={exp_path} \n→ 实际:dist={act_dist},path={act_path}")

    assert act_dist == exp_dist
    assert act_path == exp_path
