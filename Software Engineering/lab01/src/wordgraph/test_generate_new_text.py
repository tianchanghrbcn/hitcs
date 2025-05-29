import pytest
from .graph import DirectedGraph
from .bridge import generate_new_text

# 辅助打印函数
def log_case(name, input_text, output_text):
    print(f"\n[{name}] 输入: {input_text}")
    print(f"[{name}] 输出: {output_text}")

# 构造测试图
@pytest.fixture
def sample_graph():
    g = DirectedGraph()
    g.add_edge("the", "quick")
    g.add_edge("quick", "fox")
    g.add_edge("the", "brown")
    g.add_edge("brown", "fox")
    g.add_edge("lazy", "dog")
    return g

def test_tc1_single_word(sample_graph):
    input_text = "word"
    result = generate_new_text(sample_graph, input_text)
    log_case("TC1", input_text, result)
    assert result == "word"

def test_tc2_has_bridge(sample_graph):
    input_text = "the fox"
    result = generate_new_text(sample_graph, input_text)
    log_case("TC2", input_text, result)
    words = result.split()
    assert words[0] == "the" and words[-1] == "fox"
    assert len(words) in [2, 3]

def test_tc3_chain_words(sample_graph):
    input_text = "the quick fox"
    result = generate_new_text(sample_graph, input_text)
    log_case("TC3", input_text, result)
    words = result.split()
    assert words[0] == "the" and words[-1] == "fox"
    assert len(words) >= 3

def test_tc4_empty_text(sample_graph):
    input_text = ""
    result = generate_new_text(sample_graph, input_text)
    log_case("TC4", input_text, result)
    assert result == ""

def test_tc5_unknown_words(sample_graph):
    input_text = "x y"
    result = generate_new_text(sample_graph, input_text)
    log_case("TC5", input_text, result)
    assert result == "x y"
