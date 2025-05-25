#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
US-11《数据看板》矢量卡片 —— 生成 US11_cards_vector.pdf
"""

import json, sys, textwrap
from pathlib import Path
import matplotlib as mpl
import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.backends.backend_pdf import PdfPages
from matplotlib import font_manager as fm

# ────────────────── 0. 读取故事 ──────────────────
DATA = "stories.json"
try:
    with open(DATA, "r", encoding="utf-8") as f:
        story = json.load(f)
except Exception:
    sys.exit(f"❌ 无法读取 " + DATA)

# ────────────────── 1. 中文字体 ──────────────────
def zh_font():
    prefer = ["Noto Sans CJK SC", "Microsoft YaHei",
              "PingFang SC", "SimHei"]
    local  = ["./NotoSansSC-Regular.otf"]
    for fam in prefer:
        try:
            return fm.FontProperties(fname=fm.findfont(fam,
                         fallback_to_default=False))
        except Exception:
            pass
    for fp in local:
        if Path(fp).exists():
            fm.fontManager.addfont(fp)
            return fm.FontProperties(fname=fp)
    sys.exit("❌ 没有可用中文字体，放 NotoSansSC-Regular.otf 或安装系统字体后重试。")

ZH = zh_font()
mpl.rcParams.update({"pdf.fonttype": 42, "font.family": ZH.get_name()})

# ────────────────── 2. 文本工具 ──────────────────
wrap = lambda t, w=30: "\n".join(textwrap.wrap(t, w))
def wrap_keep(lines, width=32):
    return "\n".join("\n".join(textwrap.wrap(l, width)) for l in lines)

def boxed(ax, txt, x, y, *, size=12, color="#1E3A8A", weight="normal"):
    ax.text(x, y, txt, fontproperties=ZH, fontsize=size, fontweight=weight,
            color=color, ha="left", va="top", wrap=True, transform=ax.transAxes,
            bbox=dict(fc="white", ec="none", alpha=0.85, pad=0.25))

# ────────────────── 3. UI 示意（数据看板） ──────────────────
def ui_dashboard(ax, X, Y, W, H):
    gray = "#4B5563"
    # 顶栏
    nav_h = H * 0.18
    ax.add_patch(patches.Rectangle((X, Y+H-nav_h), W, nav_h,
                                   transform=ax.transAxes, fc="#1748D4"))
    ax.text(X+0.02, Y+H-nav_h+0.03, "数据看板",
            fontproperties=ZH, fontsize=11, color="white",
            transform=ax.transAxes)

    # 四个关键指标卡片
    card_w = W * 0.22
    card_h = H * 0.18
    gap_x  = W * 0.03
    start_x = X
    card_y = Y + H - nav_h - card_h - 0.025
    metrics = [("库存", "12,538"), ("今日销售额", "¥ 380,000"),
               ("今日采购额", "¥ 210,000"), ("待发货", "154")]
    for i, (lab, val) in enumerate(metrics):
        cx = start_x + i*(card_w + gap_x)
        ax.add_patch(patches.FancyBboxPatch(
            (cx, card_y), card_w, card_h, transform=ax.transAxes,
            boxstyle="round,pad=0.02", fc="#FFFFFF", ec="#D1D5DB"))
        ax.text(cx+0.02, card_y+card_h*0.65, lab, fontproperties=ZH,
                fontsize=8, color=gray, transform=ax.transAxes)
        ax.text(cx+0.02, card_y+card_h*0.28, val, fontproperties=ZH,
                fontsize=12, fontweight="bold", color="#111827",
                transform=ax.transAxes)

    # 主图区：折线图 + 饼图
    box_h = H * 0.40
    box_w = W * 0.60
    box_x = X + 0.02
    box_y = Y + 0.06
    # 折线图占位
    ax.add_patch(patches.Rectangle((box_x, box_y),
                                   box_w, box_h,
                                   transform=ax.transAxes,
                                   fc="#F9FAFB", ec="#D1D5DB"))
    # 折线
    step = box_w / 7
    pts = [(box_x + step*i, box_y + box_h* (0.25+0.4*(i%2)))
           for i in range(8)]
    ax.plot([p[0] for p in pts], [p[1] for p in pts],
            transform=ax.transAxes, lw=1.5, color="#3B82F6")
    # 饼图占位
    pie_r = H * 0.14
    pie_x = X + W - pie_r*2 - 0.04
    pie_y = box_y
    ax.add_patch(patches.Wedge((pie_x+pie_r, pie_y+pie_r),
                               pie_r, 0, 270,
                               transform=ax.transAxes,
                               fc="#10B981", ec="#FFFFFF"))

# ────────────────── 4. 正 / 反面 ──────────────────
def front(ax, s):
    ax.add_patch(patches.FancyBboxPatch(
        (0.02,0.02),0.96,0.96, boxstyle="round,pad=0.02",
        transform=ax.transAxes, fc="#EAF4FF", ec="#1E40AF", lw=1.4))
    boxed(ax, f"用户故事卡片 — US-{s['no']:02d}  {s['title']}（正面）",
          0.05, 0.92, size=14, weight="bold")
    boxed(ax, wrap(f"作为{s['role']}，我希望{s['activity']}，以便{s['value']}。"),
          0.05, 0.78, size=12)

    # UI 区域：65 % × 45 %，水平+垂直居中（靠下）
    ui_w, ui_h = 0.65, 0.45
    ui_x = (1-ui_w)/2
    ui_y = 0.08
    ui_dashboard(ax, ui_x, ui_y, ui_w, ui_h)

def back(ax, s):
    ax.add_patch(patches.FancyBboxPatch(
        (0.02,0.02),0.96,0.96, boxstyle="round,pad=0.02",
        transform=ax.transAxes, fc="#FFF8E6", ec="#B45309", lw=1.4))
    boxed(ax, f"用户故事卡片 — US-{s['no']:02d}  {s['title']}（反面）",
          0.05, 0.92, size=14, color="#7C2D12", weight="bold")

    succ = "成功结果\n" + wrap_keep([f"{i+1}. {t}"
            for i,t in enumerate(s['success'])])
    fail = "失败情况\n" + wrap_keep([f"{i+1}. {t}"
            for i,t in enumerate(s['failure'])])

    boxed(ax, succ, 0.05, 0.77, size=11, color="#7C2D12")
    ax.plot([0.05,0.95],[0.62,0.62], transform=ax.transAxes,
            ls=(0,(3,3)), lw=1, color="#B45309", alpha=0.5)
    boxed(ax, fail, 0.05, 0.54, size=11, color="#7C2D12")

# ────────────────── 5. 导出 PDF ──────────────────
pdf = "US11_cards_vector.pdf"
with PdfPages(pdf) as f:
    fig, ax = plt.subplots(figsize=(8.27,5.83)); ax.axis("off")
    front(ax, story); f.savefig(fig); plt.close(fig)

    fig, ax = plt.subplots(figsize=(8.27,5.83)); ax.axis("off")
    back(ax, story);  f.savefig(fig); plt.close(fig)

print(f"✅ 生成完成：{Path(pdf).resolve()}")
