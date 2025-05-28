from __future__ import annotations

import math
from typing import List, Optional, Tuple

from .algorithms import dijkstra_all, enumerate_paths, page_rank, random_walk
from .bridge import bridge_words, generate_new_text
from .graph import DirectedGraph
from .utils import green, red, yellow


class CLI:
    """命令行交互壳：批处理延迟绘图，交互即时绘图"""

    def __init__(self, g: DirectedGraph):
        self.g = g
        self._deferred: List[Tuple[Optional[str], Optional[List[str]]]] = []

    # ---------- 单行处理 ----------
    def _handle_line(self, raw: str, *, defer_draw: bool = False) -> bool:
        raw = raw.split("#", 1)[0].rstrip()
        if not raw:
            return True

        cmd, *rest = raw.split(maxsplit=1)
        cmd = cmd.lower()
        args_str = rest[0] if rest else ""
        args = args_str.split()

        # 退出
        if cmd in {"quit", "exit"}:
            return False

        # ---------------- show ----------------
        if cmd == "show":
            self.g.pretty_print(show_weight=True)
            save = None
            if args:
                if len(args) == 2 and args[0] == "--save":
                    save = args[1]
                else:
                    print(red("用法: show [--save filename]"))
                    return True
            if defer_draw:
                self._deferred.append((save, None))
                print(yellow("[+] 已加入绘图任务，稍后执行…"))
            else:
                print(yellow("[绘图] 生成有向图…"))
                self.g.draw(save=save, interactive=True)

        # ---------------- bridge ----------------
        elif cmd == "bridge":
            if len(args) != 2:
                print(red("用法: bridge w1 w2"))
            else:
                br = bridge_words(self.g, args[0], args[1])
                print(
                    green(f"bridge words: {', '.join(br)}")
                    if br
                    else red("no bridge words")
                )

        # ---------------- newtext ----------------
        elif cmd == "newtext":
            sentence = args_str.strip()
            if sentence.startswith(("'", '"')) and sentence.endswith(("'", '"')):
                sentence = sentence[1:-1]
            if not sentence:
                print(red("用法: newtext <sentence>"))
            else:
                print(green(generate_new_text(self.g, sentence)))

        # ---------------- shortest ----------------
        elif cmd == "shortest":
            if not args:
                print(red("用法: shortest src [dst]"))
                return True
            if len(args) == 1:  # 单源
                src = args[0]
                dist, pred = dijkstra_all(self.g, src)
                if math.isinf(dist[src]):
                    print(red(f"“{src}” 不在图中"))
                    return True
                for dst, d in sorted(dist.items(), key=lambda x: x[1]):
                    if dst == src or math.isinf(d):
                        continue
                    p = next(enumerate_paths(pred, src, dst))
                    print(green(f"{src} -> {dst}  dist={d}:  {' -> '.join(p)}"))
            else:  # 点对点
                src, dst = args[:2]
                dist, pred = dijkstra_all(self.g, src)
                if math.isinf(dist[dst]):
                    print(red("unreachable"))
                    return True
                p = next(enumerate_paths(pred, src, dst))
                print(green(f"{src} -> {dst}  dist={dist[dst]}:  {' -> '.join(p)}"))
                if defer_draw:
                    self._deferred.append((None, p))
                else:
                    self.g.draw(path=p, interactive=True)

        # ---------------- pagerank ----------------
        elif cmd == "pagerank":
            for w, v in sorted(
                page_rank(self.g).items(), key=lambda p: p[1], reverse=True
            ):
                print(f"{w:>15}  {v:.4f}")

        # ---------------- walk ----------------
        elif cmd == "walk":
            start = args[0] if args else None
            print(green(" ".join(random_walk(self.g, start))))

        # ---------------- help ----------------
        elif cmd == "help":
            print(
                yellow(
                    """commands:
  show [--save file]         展示有向图
  bridge w1 w2               查询桥接词
  newtext <sentence>         生成新文本
  shortest src [dst]         最短路径 (单词+可选目标)
  pagerank                   计算 PageRank
  walk [start]               随机游走
  quit / exit                退出"""
                )
            )
        else:
            print(red("unknown command – type 'help'"))
        return True

    # ---------- 批处理脚本 ----------
    def run_batch(self, lines: List[str]) -> None:
        feat = {
            "show": "功能2 展示有向图",
            "bridge": "功能3 查询桥接词",
            "newtext": "功能4 生成新文本",
            "shortest": "功能5 最短路径",
            "pagerank": "功能6 PageRank",
            "walk": "功能7 随机游走",
        }
        for line in lines:
            ln = line.rstrip()
            if not ln or ln.lstrip().startswith("#"):
                continue
            tag = feat.get(ln.split(maxsplit=1)[0].lower(), "脚本指令")
            print(yellow(f"\n>>> {tag} | 输入命令: {ln}"))
            if not self._handle_line(ln, defer_draw=True):
                break

        # 执行延迟绘图任务（interactive=False 避免 backend 崩溃）
        for save, path in self._deferred:
            if path:
                self.g.draw(path=path, interactive=False)
            else:
                self.g.draw(save=save, interactive=False)
        self._deferred.clear()

    # ---------- 交互循环 ----------
    def loop(self):
        while True:
            try:
                raw = input("wordgraph> ")
            except (EOFError, KeyboardInterrupt):
                print("\nBye!")
                break
            if not self._handle_line(raw):
                break
