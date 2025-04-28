#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Lab01 Word-Graph – 主入口
1) 运行 test/*.wg   2) 自定义文本文件交互
"""

from pathlib import Path
import itertools
from wordgraph.graph import DirectedGraph
from wordgraph.utils import tokens_from_line, yellow, red, green
from wordgraph.cli import CLI

BASE_DIR = Path(__file__).resolve().parent
TEST_DIR = BASE_DIR.parent / "test"

DATASETS = {
    "1": ("easy_test.wg", "Easy  – 10 words"),
    "2": ("hard_test.wg", "Hard  – long passage"),
}


# ---------- 公用工具 ----------
def split_wg(path: Path):
    with path.open(encoding="utf-8") as f:
        text = list(itertools.takewhile(
            lambda ln: ln.strip() != "### COMMANDS ###", f))
        cmds = [ln for ln in f]
    return text, cmds


def build_graph(text_lines) -> DirectedGraph:
    g = DirectedGraph()
    tokens = (tok for ln in text_lines for tok in tokens_from_line(ln))
    try:
        prev = next(tokens)
        for cur in tokens:
            g.add_edge(prev, cur)
            prev = cur
    except StopIteration:
        pass
    return g


# ---------- 模式 A：批处理测试用例 ----------
def run_dataset(path: Path, enter_interactive: bool):
    if not path.is_file():
        print(red(f"[!] 未找到 {path.name}，跳过"))
        return
    print(yellow(f"\n=== 加载 {path.name} ==="))
    text_lines, cmd_lines = split_wg(path)
    shell = CLI(build_graph(text_lines))

    if cmd_lines:
        print(yellow("[+] 批量执行脚本 …"))
        shell.run_batch(cmd_lines)
        print(yellow("[+] 脚本结束"))

    if enter_interactive:
        print(yellow("[+] 进入交互模式 (quit/exit 结束)"))
        shell.loop()


def run_predefined():
    print(green("请选择数据集："))
    for k, (_, desc) in DATASETS.items():
        print(f"  {k}. {desc}")
    sel = input("输入 1/2，回车 = 全部: ").strip()
    if sel:
        files = [TEST_DIR / DATASETS.get(sel, DATASETS['1'])[0]]
    else:
        files = [TEST_DIR / v[0] for v in DATASETS.values()]

    for fp in files[:-1]:
        run_dataset(fp, enter_interactive=False)
    run_dataset(files[-1], enter_interactive=True)


# ---------- 模式 B：用户自选纯文本 ----------
def run_custom_file():
    path = Path(input(green("请输入文本文件路径: ")).strip('" '))
    if not path.is_file():
        print(red("[!] 文件不存在"))
        return
    print(yellow(f"\n=== 载入 {path.name} ==="))
    with path.open(encoding="utf-8") as f:
        text_lines = f.readlines()
    shell = CLI(build_graph(text_lines))
    print(yellow("[+] 图构建完毕，进入交互模式 (quit/exit 结束)"))
    shell.loop()


# ---------- 主入口 ----------
def main():
    if not TEST_DIR.is_dir():
        print(red(f"[!] 测试目录不存在: {TEST_DIR} (请确认目录结构)"))
        return

    print(green("选择运行模式："))
    print("  1. 运行内置测试用例")
    print("  2. 指定文本文件交互")
    choice = input("输入 1/2 (默认 1): ").strip() or '1'

    if choice == '2':
        run_custom_file()
    else:  # 默认 1
        run_predefined()


if __name__ == "__main__":
    main()
