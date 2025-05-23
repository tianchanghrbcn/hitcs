#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
US-01 智能物资登记 —— 最终卡片 (无文字重叠版)
"""

import matplotlib as mpl
import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.backends.backend_pdf import PdfPages
from matplotlib import font_manager as fm
from pathlib import Path
import sys, textwrap

# ---------- 1. 加载中文字体 ----------
def load_zh():
    prefer = ["Noto Sans CJK SC", "Microsoft YaHei", "PingFang SC", "SimHei"]
    local  = ["./NotoSansSC-Regular.otf"]
    for fam in prefer:
        try:
            return fm.FontProperties(fname=fm.findfont(fam, fallback_to_default=False))
        except Exception:
            pass
    for fp in local:
        if Path(fp).exists():
            fm.fontManager.addfont(fp)
            return fm.FontProperties(fname=fp)
    return None

zh = load_zh()
if zh is None:
    sys.exit("❌ 运行机器没有中文字体！请安装字体或放 NotoSansSC-Regular.otf 后重试。")

mpl.rcParams["pdf.fonttype"] = 42
mpl.rcParams["font.family"] = zh.get_name()

# ---------- 2. 文本帮助 ----------
def wrap_cn(txt, width=26):
    """把长中文句子按固定字数断行（无空格也能换行）"""
    return "\n".join(textwrap.wrap(txt, width))

def add(ax, txt, x, y, w, *, size=12, weight="normal", color="black"):
    ax.text(
        x, y, txt,
        fontproperties=zh, fontsize=size, fontweight=weight, color=color,
        ha="left", va="top", wrap=True, transform=ax.transAxes,
        bbox=dict(fc="white", ec="none", alpha=0.85, pad=0.25)
    )

# ---------- 3. 示意图 ----------
def sketch(ax):
    cam  = patches.Rectangle((0.70, 0.46), 0.13, 0.22, transform=ax.transAxes,
                             fc="none", ec="black", lw=1.2)
    lens = patches.Circle((0.70+0.13/2, 0.46+0.22/2), 0.13*0.15,
                          transform=ax.transAxes, fc="none", ec="black")
    bar  = patches.Rectangle((0.85, 0.46), 0.10, 0.22, transform=ax.transAxes,
                             fc="none", ec="black", lw=1.2)
    ax.add_patch(cam); ax.add_patch(lens); ax.add_patch(bar)
    for i in range(9):
        lw = 1 if i % 2 else 2
        x  = 0.85 + 0.01 + i * (0.10-0.02) / 8
        ax.plot([x, x], [0.47, 0.46+0.22-0.01],
                transform=ax.transAxes, color="black", lw=lw)
    ax.text(0.765, 0.70, "示意图", fontproperties=zh, fontsize=12,
            ha="center", va="top", transform=ax.transAxes, color="#1F3763")

# ---------- 4. 正 / 反面 ----------
def front(ax):
    ax.add_patch(patches.FancyBboxPatch(
        (0.02, 0.02), 0.96, 0.96, boxstyle="round,pad=0.02",
        transform=ax.transAxes, fc="#E8F4FD", ec="#2F5597", lw=1.6))
    add(ax, "用户故事卡片 — US-01  智能物资登记（正面）",
        0.05, 0.90, 0.9, size=16, weight="bold", color="#1F3763")

    story = ("作为部门管理员，我希望通过拍照或扫描方式智能识别物资信息（优先 SN 码），"
             "以便快速准确地将物资录入系统。")
    add(ax, wrap_cn(story, 26), 0.05, 0.74, 0.55, size=13, color="#1F3763")
    sketch(ax)

def back(ax):
    ax.add_patch(patches.FancyBboxPatch(
        (0.02, 0.02), 0.96, 0.96, boxstyle="round,pad=0.02",
        transform=ax.transAxes, fc="#FFF8E6", ec="#C55A11", lw=1.6))
    add(ax, "用户故事卡片 — US-01  智能物资登记（反面）",
        0.05, 0.90, 0.9, size=16, weight="bold", color="#7F2F0F")

    success = ("成功情况\n"
               "1. 系统成功识别物资的 SN 码、二维码或条形码；\n"
               "2. 系统根据图像分类预测物资类别；\n"
               "3. 成功生成物资记录并关联相关信息。")
    failure = ("失败情况\n"
               "• 图像质量不佳导致识别失败 → 提示用户重新拍照或手动输入；\n"
               "• 识别到重复的 SN 码 → 提示用户确认是否为重复登记；\n"
               "• 系统无法预测物资类别 → 要求用户手动选择分类。")
    add(ax, success, 0.05, 0.72, 0.9, size=12, color="#7F2F0F")
    add(ax, failure, 0.05, 0.42, 0.9, size=12, color="#7F2F0F")

# ---------- 5. 导出 ----------
from tempfile import gettempdir
out = Path("US01_card_no_overlap.pdf")
with PdfPages(out) as pdf:
    fig, ax = plt.subplots(figsize=(8.27, 5.83)); ax.axis("off"); front(ax); pdf.savefig(fig); plt.close(fig)
    fig, ax = plt.subplots(figsize=(8.27, 5.83)); ax.axis("off");  back(ax); pdf.savefig(fig);  plt.close(fig)

print(f"✅ 生成完成：{out.resolve()}")
