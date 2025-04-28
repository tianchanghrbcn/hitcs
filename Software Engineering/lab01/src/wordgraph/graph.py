from __future__ import annotations
from collections import defaultdict, Counter
from typing import Dict, List, Tuple, Optional
import os, tempfile, webbrowser, math, shutil, subprocess

# -------------------------------------------------------------
# 确保 dot.exe 能被找到
# -------------------------------------------------------------
def _ensure_graphviz():
    if shutil.which("dot"):
        return
    for p in (r"C:\Program Files\Graphviz\bin",
              r"C:\Program Files (x86)\Graphviz\bin"):
        if os.path.exists(os.path.join(p, "dot.exe")):
            os.environ["PATH"] += os.pathsep + p
            return
_ensure_graphviz()

try:
    import pydot
except ImportError:
    pydot = None

import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch
from itertools import pairwise
from .utils import yellow, red

# ---------- 权重 → 颜色 + 线宽 ----------
def _edge_style(w: int, w_max: int) -> Tuple[str, float]:
    palette = ["#a6cee3", "#66b2d6", "#4292c3", "#2176b9", "#1f78b4"]
    idx     = min(4, int((w - 1) / max(1, w_max) * 4))
    return palette[idx], 1.0 + 0.5 * idx   # color, penwidth

# =============================================================
class DirectedGraph:
    def __init__(self):
        self.adj: Dict[str, Counter] = defaultdict(Counter)

    # ---------- 构图 ----------
    def add_edge(self, s: str, t: str):
        if s and t:
            self.adj[s][t] += 1
            self.adj.setdefault(t, Counter())

    # ---------- 查询 ----------
    def nodes(self) -> List[str]:
        s = set(self.adj)
        for nb in self.adj.values():
            s.update(nb)
        return list(s)

    def out_edges(self, v: str) -> Counter:
        return self.adj.get(v, Counter())

    def in_edges(self, v: str) -> Counter:
        inc = Counter()
        for s, nb in self.adj.items():
            if v in nb:
                inc[s] = nb[v]
        return inc

    # ---------- 打印 ----------
    def pretty_print(self, show_weight=False):
        for s in sorted(self.adj):
            line = ", ".join(f"{d}({w})" if show_weight else d
                             for d, w in self.adj[s].items())
            print(f"{s:>15}  ->  {line}")

    # =========================================================
    # 绘图主入口
    # =========================================================
    def draw(self, *, save: Optional[str] = None,
             path: List[str] | None = None,
             interactive: bool = True):
        """
        save  : 指定文件名前缀（不含扩展）; None = 交互模式时写临时 eps
        path  : 最短路径节点序列，高亮
        interactive: False = 批处理，不调用 plt.show()
        """
        # -------- 批处理且未指定文件名：完全跳过 ----------
        if not interactive and save is None:
            return

        if pydot and shutil.which("dot"):
            if self._draw_graphviz(save, path, interactive):
                return

        print(red("[!] Graphviz 不可用 → 使用 matplotlib 回退"))
        self._draw_matplotlib(save, path, interactive)

    # ---------------------------------------------------------
    # Graphviz EPS + PDF
    # ---------------------------------------------------------
    def _draw_graphviz(self, save, path, interactive) -> bool:
        try:
            dot = pydot.Dot(graph_type='digraph', rankdir='LR',
                            splines='ortho', nodesep="0.4", ranksep="0.5")
        except Exception as e:
            print(red(f"[!] pydot 创建失败: {e}"))
            return False

        # 节点
        for v in self.nodes():
            dot.add_node(pydot.Node(v, shape="circle", fontsize="10"))

        hilite = {(a, b) for a, b in zip(path, path[1:])} if path else set()
        w_max  = max((w for nb in self.adj.values() for w in nb.values()), default=1)

        # 边
        for s, nb in self.adj.items():
            for d, w in nb.items():
                if (s, d) in hilite:
                    color, pw = "red", "3"
                else:
                    color, pw = _edge_style(w, w_max); pw = str(pw)
                dot.add_edge(pydot.Edge(s, d, color=color,
                                        penwidth=pw, arrowsize="0.6"))

        # 输出 eps
        if save is None:
            fd, eps_path = tempfile.mkstemp(suffix=".eps", prefix="wg_")
            os.close(fd)
        else:
            root, _ = os.path.splitext(save)
            eps_path = root + ".eps"

        try:
            dot.write(eps_path, format="eps")
            print(yellow(f"[+] Graphviz 输出 → {eps_path}"))
        except Exception as e:
            print(red(f"[!] Graphviz 失败: {e}"))
            return False

        # 自动转 PDF（无损）
        if shutil.which("epstopdf"):
            pdf_path = os.path.splitext(eps_path)[0] + ".pdf"
            try:
                subprocess.run(["epstopdf", eps_path, "--outfile=" + pdf_path],
                               check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                print(yellow(f"[+] 已生成 PDF → {pdf_path}"))
            except Exception as e:
                print(red(f"[!] epstopdf 转换失败: {e}"))

        # 交互模式自动打开
        if save is None and interactive:
            try:
                webbrowser.open("file://" + os.path.abspath(eps_path))
            except Exception:
                pass
        return True

    # ---------------------------------------------------------
    # matplotlib 回退
    # ---------------------------------------------------------
    def _draw_matplotlib(self, save, path, interactive):
        if len(self.adj) <= 1:
            print(yellow("[绘图] 节点≤1，跳过"))
            return

        nodes = sorted(self.nodes())
        n = len(nodes)
        pos = {v: (math.cos(2 * math.pi * i / n),
                   math.sin(2 * math.pi * i / n))
               for i, v in enumerate(nodes)}
        w_max = max((w for nb in self.adj.values() for w in nb.values()), default=1)

        fig, ax = plt.subplots(figsize=(6, 6))
        ax.axis('off'); ax.set_aspect('equal')

        for v, (x, y) in pos.items():
            ax.plot(x, y, 'o', ms=8)
            ax.text(x, y, v, ha='center', va='center', fontsize=8)

        for s, nb in self.adj.items():
            x0, y0 = pos[s]
            for d, w in nb.items():
                if s == d:
                    continue
                x1, y1 = pos[d]
                color, pw = _edge_style(w, w_max)
                ax.add_patch(FancyArrowPatch((x0, y0), (x1, y1),
                                             arrowstyle='-|>', mutation_scale=10,
                                             linewidth=pw, color=color,
                                             alpha=0.9,
                                             connectionstyle="arc3,rad=0.2"))

        if path and len(path) > 1:
            for a, b in pairwise(path):
                xa, ya = pos[a]; xb, yb = pos[b]
                ax.add_patch(FancyArrowPatch((xa, ya), (xb, yb),
                                             arrowstyle='-|>', mutation_scale=16,
                                             linewidth=3, color='red',
                                             connectionstyle="arc3,rad=0.2"))

        if save:
            root, _ = os.path.splitext(save)
            png = root + ".png"
            plt.savefig(png, bbox_inches='tight')
            print(yellow(f"[+] 备用 PNG → {png}"))

        if interactive:
            try:
                plt.show()
            except Exception:
                pass
        plt.close(fig)
