import pytest
from .graph import DirectedGraph
from .algorithms import shortest_path

# 构造用于路径覆盖的测试图
@pytest.fixture
def sample_graph():
    g = DirectedGraph()
    g.add_edge("A", "B")
    g.add_edge("B", "C")
    g.add_edge("C", "D")
    g.add_edge("A", "D")
    g.add_edge("B", "E")
    g.add_edge("D", "E")
    g.add_edge("E", "F")
    g.add_edge("C", "F")
    return g

# 路径 P1：A → B → C → D → E → F
def test_p1_full_path(sample_graph):
    dist, path = shortest_path(sample_graph, "A", "F")
    print(f"\n[P1] 距离: {dist}, 路径: {path}")
    assert path == ["A", "B", "C", "F"]
    assert dist == 3.0  # 所有边默认权重为1

# 路径 P2：A → D → E → F （直接路线）
def test_p2_direct_path(sample_graph):
    dist, path = shortest_path(sample_graph, "A", "E")
    print(f"\n[P2] 距离: {dist}, 路径: {path}")
    assert dist == 2.0
    assert path in [["A", "D", "E"], ["A", "B", "E"]]


# 路径 P3：起点与终点一致（0距离）
def test_p3_self_loop(sample_graph):
    dist, path = shortest_path(sample_graph, "A", "A")
    print(f"\n[P3] 距离: {dist}, 路径: {path}")
    assert dist == 0.0
    assert path == ["A"]

# 路径 P4：不可达节点
def test_p4_unreachable(sample_graph):
    sample_graph.add_edge("X", "Y")  # 添加孤立子图
    dist, path = shortest_path(sample_graph, "A", "Y")
    print(f"\n[P4] 距离: {dist}, 路径: {path}")
    assert dist == float("inf")
    assert path == []

# 路径 P5：中间节点重复访问（触发 d != dist[v] 分支）
def test_p5_dist_check_continue(sample_graph):
    # 构造双路径结构以触发 pq 中的低优先路径被跳过
    sample_graph.add_edge("A", "X")
    sample_graph.add_edge("X", "E")  # A→X→E（劣路径）
    dist, path = shortest_path(sample_graph, "A", "F")
    print(f"\n[P5] 距离: {dist}, 路径: {path}")
    assert path == ["A", "B", "C", "F"]
