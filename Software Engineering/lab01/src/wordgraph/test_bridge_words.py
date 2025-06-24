import pytest
from .graph import DirectedGraph
from .bridge import bridge_words  # 查询桥接词函数

def log_case(name, w1, w2, out):
    print(f"\n[{name}] 输入:({w1},{w2}) → 输出:{out}")

@pytest.fixture
def g():
    g = DirectedGraph()
    g.add_edge("the",   "quick")
    g.add_edge("quick", "fox")
    g.add_edge("the",   "brown")
    g.add_edge("brown", "fox")
    g.add_edge("lazy",  "dog")
    return g

# --- EC1 ---
def test_tc1_multi_bridges(g):
    out = bridge_words(g, "the", "fox")
    log_case("TC1", "the", "fox", out)
    assert set(out) == {"quick", "brown"}

# --- EC2 ---
def test_tc2_no_bridge_quick_fox(g):
    out = bridge_words(g, "quick", "fox")
    log_case("TC2", "quick", "fox", out)
    assert out == []

def test_tc3_no_bridge_the_dog(g):
    out = bridge_words(g, "the", "dog")
    log_case("TC3", "the", "dog", out)
    assert out == []

# --- EC3 & EC4 ---
def test_tc4_w1_not_exist(g):
    out = bridge_words(g, "cat", "fox")
    log_case("TC4", "cat", "fox", out)
    assert out == []

def test_tc5_w2_not_exist(g):
    out = bridge_words(g, "the", "cat")
    log_case("TC5", "the", "cat", out)
    assert out == []

# --- EC5 ---
def test_tc6_same_words(g):
    out = bridge_words(g, "fox", "fox")
    log_case("TC6", "fox", "fox", out)
    assert out == []

# --- EC6 ---
def test_tc7_case_insensitive(g):
    out = bridge_words(g, "The", "FOX")
    log_case("TC7", "The", "FOX", out)
    assert set(out) == {"quick", "brown"}

