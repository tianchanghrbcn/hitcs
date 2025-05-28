from __future__ import annotations

"""wordgraph.graph
-------------------

Drawing utilities for the *word‑graph* project.

The module tries Graphviz (via **pydot**) first because layout quality is
significantly better; if either *pydot* or *dot.exe* is missing, it falls back
on a pure‑matplotlib implementation.

Public API
~~~~~~~~~~
- :class:`DirectedGraph` – a super‑light directed multigraph with drawing
  helpers.

The rest of the functions are considered private implementation details.
"""

# ---------------------------------------------------------------------------
# Standard‑library imports (PEP 8 / isort order)
# ---------------------------------------------------------------------------
import math
import os
import shutil
import subprocess
import tempfile
import webbrowser
from collections import Counter, defaultdict
from itertools import pairwise
from typing import Dict, List, Optional, Tuple

# ---------------------------------------------------------------------------
# Third‑party imports
# ---------------------------------------------------------------------------
try:
    import pydot  # type: ignore
except ImportError:  # pragma: no cover – optional dependency
    pydot = None  # pylint: disable=invalid-name

import matplotlib.pyplot as plt  # pylint: disable=wrong-import-order
from matplotlib.patches import FancyArrowPatch

# ---------------------------------------------------------------------------
# Local imports (must come *after* matplotlib so its backend is set properly)
# ---------------------------------------------------------------------------
from .utils import red, yellow  # noqa: E402  (local import after 3rd‑party)

__all__ = ["DirectedGraph"]

# ---------------------------------------------------------------------------
# Helper: locate Graphviz on Windows if it isn't on PATH already
# ---------------------------------------------------------------------------


def _ensure_graphviz() -> None:
    """Append Graphviz's *bin* directory to *PATH* if ``dot.exe`` is absent.

    This is a *best‑effort* operation – it silently does nothing if Graphviz
    still cannot be located.
    """

    if shutil.which("dot"):
        return

    candidate_dirs = (
        r"C:\\Program Files\\Graphviz\\bin",
        r"C:\\Program Files (x86)\\Graphviz\\bin",
    )
    for path in candidate_dirs:
        if os.path.exists(os.path.join(path, "dot.exe")):
            os.environ["PATH"] += os.pathsep + path
            return


_ensure_graphviz()

# ---------------------------------------------------------------------------
# Private helpers
# ---------------------------------------------------------------------------


def _edge_style(weight: int, max_weight: int) -> Tuple[str, float]:
    """Map an edge *weight* to an RGB colour and pen‑width."""

    palette = ["#a6cee3", "#66b2d6", "#4292c3", "#2176b9", "#1f78b4"]
    idx = min(4, int((weight - 1) / max(1, max_weight) * 4))
    return palette[idx], 1.0 + 0.5 * idx


# ===========================================================================
# Public mini‑graph class (enough for this lab without external libraries)
# ===========================================================================


class DirectedGraph:
    """A *very* small directed multigraph focused on drawing convenience."""

    def __init__(self) -> None:
        self.adj: Dict[str, Counter[str]] = defaultdict(Counter)

    # ---------------------------------------------------------------------
    # Construction helpers
    # ---------------------------------------------------------------------

    def add_edge(self, src: str, dst: str) -> None:
        if src and dst:
            self.adj[src][dst] += 1
            self.adj.setdefault(dst, Counter())

    # ---------------------------------------------------------------------
    # Query helpers
    # ---------------------------------------------------------------------

    def nodes(self) -> List[str]:
        out: set[str] = set(self.adj)
        for neighbours in self.adj.values():
            out.update(neighbours)
        return sorted(out)

    def out_edges(self, v: str) -> Counter[str]:
        return self.adj.get(v, Counter())

    def in_edges(self, v: str) -> Counter[str]:
        inc: Counter[str] = Counter()
        for src, neighbours in self.adj.items():
            if v in neighbours:
                inc[src] = neighbours[v]
        return inc

    # ---------------------------------------------------------------------
    # Utility printing – handy while debugging
    # ---------------------------------------------------------------------

    def pretty_print(
        self, show_weight: bool = False
    ) -> None:  # noqa: D401 – imperative mood
        for src in self.nodes():
            line = ", ".join(
                f"{dst}({w})" if show_weight else dst
                for dst, w in self.adj[src].items()
            )
            print(f"{src:>15}  ->  {line}")

    # =====================================================================
    # DRAWING API – tries Graphviz first, falls back to matplotlib
    # =====================================================================

    def draw(
        self,
        *,
        save: Optional[str] = None,
        path: Optional[List[str]] = None,
        interactive: bool = True,
    ) -> None:
        """Render the graph to file or screen.

        Parameters
        ----------
        save
            If given, **without** extension, use as output basename.  ``None``
            means an *EPS* is written to a temporary file (and opened).
        path
            An optional shortest‑path node sequence to highlight.
        interactive
            In *batch* mode set to ``False`` so we don't call ``plt.show()``.
        """

        if not interactive and save is None:
            # Batch mode: nothing to show and nowhere to save.
            return

        if pydot is not None and shutil.which("dot"):
            if self._draw_graphviz(save, path, interactive):
                return

        print(red("[!] Graphviz 不可用 → 使用 matplotlib 回退"))
        self._draw_matplotlib(save, path, interactive)

    # ------------------------------------------------------------------
    # Implementation: Graphviz via pydot
    # ------------------------------------------------------------------

    def _draw_graphviz(
        self,
        save: Optional[str],
        path: Optional[List[str]],
        interactive: bool,
    ) -> bool:
        """Return *True* if Graphviz succeeded."""

        try:
            dot = pydot.Dot(
                graph_type="digraph",
                rankdir="LR",
                splines="ortho",
                nodesep="0.4",
                ranksep="0.5",
            )
        except Exception as exc:  # pragma: no cover – pydot internal error
            print(red(f"[!] pydot 创建失败: {exc}"))
            return False

        # ------------------- nodes -------------------
        for v in self.nodes():
            dot.add_node(pydot.Node(v, shape="circle", fontsize="10"))

        hilite = {(a, b) for a, b in zip(path or [], (path or [])[1:])}
        w_max = max((w for nb in self.adj.values() for w in nb.values()), default=1)

        # ------------------- edges -------------------
        for src, nb in self.adj.items():
            for dst, w in nb.items():
                color, pw = (
                    ("red", "3") if (src, dst) in hilite else _edge_style(w, w_max)
                )
                dot.add_edge(
                    pydot.Edge(src, dst, color=color, penwidth=str(pw), arrowsize="0.6")
                )

        # ------------------- write EPS -------------------
        if save is None:
            fd, eps_path = tempfile.mkstemp(suffix=".eps", prefix="wg_")
            os.close(fd)
        else:
            root, _ = os.path.splitext(save)
            eps_path = root + ".eps"

        try:
            dot.write(eps_path, format="eps")
            print(yellow(f"[+] Graphviz 输出 → {eps_path}"))
        except Exception as exc:  # pragma: no cover – I/O error
            print(red(f"[!] Graphviz 失败: {exc}"))
            return False

        # Auto‑convert to loss‑less PDF if possible
        if shutil.which("epstopdf"):
            pdf_path = os.path.splitext(eps_path)[0] + ".pdf"
            try:
                subprocess.run(
                    ["epstopdf", eps_path, "--outfile=" + pdf_path],
                    check=True,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    text=True,
                )
                print(yellow(f"[+] 已生成 PDF → {pdf_path}"))
            except Exception as exc:  # pragma: no cover – epstopdf missing
                print(red(f"[!] epstopdf 转换失败: {exc}"))

        if save is None and interactive:
            try:
                webbrowser.open("file://" + os.path.abspath(eps_path))
            except Exception:  # pragma: no cover – browser failed
                pass
        return True

    # ------------------------------------------------------------------
    # Implementation: pure matplotlib fallback
    # ------------------------------------------------------------------

    def _draw_matplotlib(
        self,
        save: Optional[str],
        path: Optional[List[str]],
        interactive: bool,
    ) -> None:
        """Matplotlib fallback renderer."""

        if len(self.adj) <= 1:
            print(yellow("[绘图] 节点≤1，跳过"))
            return

        nodes = self.nodes()
        n = len(nodes)
        pos = {
            v: (math.cos(2 * math.pi * i / n), math.sin(2 * math.pi * i / n))
            for i, v in enumerate(nodes)
        }
        w_max = max((w for nb in self.adj.values() for w in nb.values()), default=1)

        fig, ax = plt.subplots(figsize=(6, 6), dpi=120)
        ax.axis("off")
        ax.set_aspect("equal")

        for v, (x, y) in pos.items():
            ax.plot(x, y, "o", ms=8)
            ax.text(x, y, v, ha="center", va="center", fontsize=8)

        for src, nb in self.adj.items():
            x0, y0 = pos[src]
            for dst, w in nb.items():
                if src == dst:
                    continue
                x1, y1 = pos[dst]
                color, pw = _edge_style(w, w_max)
                ax.add_patch(
                    FancyArrowPatch(
                        (x0, y0),
                        (x1, y1),
                        arrowstyle="-|>",
                        mutation_scale=10,
                        linewidth=pw,
                        color=color,
                        alpha=0.9,
                        connectionstyle="arc3,rad=0.2",
                    )
                )

        if path and len(path) > 1:
            for a, b in pairwise(path):
                xa, ya = pos[a]
                xb, yb = pos[b]
                ax.add_patch(
                    FancyArrowPatch(
                        (xa, ya),
                        (xb, yb),
                        arrowstyle="-|>",
                        mutation_scale=16,
                        linewidth=3,
                        color="red",
                        connectionstyle="arc3,rad=0.2",
                    )
                )

        if save:
            root, _ = os.path.splitext(save)
            png = root + ".png"
            plt.savefig(png, bbox_inches="tight")
            print(yellow(f"[+] 备用 PNG → {png}"))

        if interactive:
            try:
                plt.show()
            except Exception:  # pragma: no cover – backend missing
                pass
        plt.close(fig)
