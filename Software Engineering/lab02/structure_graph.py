#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
ERP 仓储管理系统 - 基本架构图（放大字号、精简文案）
"""

import sys
from pathlib import Path
import matplotlib.pyplot as plt
import matplotlib.patches as patches
import matplotlib as mpl
from matplotlib import font_manager as fm

# ── 1. 中文字体 ────────────────────────────────────────
def zh_font():
    prefer = ["Noto Sans CJK SC", "Microsoft YaHei", "PingFang SC", "SimHei"]
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
    sys.exit("❌ 没有可用中文字体，可放置 NotoSansSC-Regular.otf 后重试")

ZH = zh_font()
mpl.rcParams.update({"pdf.fonttype": 42, "font.family": ZH.get_name()})

# ── 2. 绘制工具 ────────────────────────────────────────
def add_box(ax, x, y, w, h, text, fc="#FFFFFF", fs=10):
    ax.add_patch(patches.FancyBboxPatch(
        (x, y), w, h, boxstyle="round,pad=0.025",
        ec="#1F2937", fc=fc, lw=0.9, transform=ax.transAxes))
    ax.text(x + w/2, y + h/2, text, fontproperties=ZH,
            fontsize=fs, ha="center", va="center", wrap=True,
            transform=ax.transAxes)

def arrow(ax, x1, y1, x2, y2):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                xycoords="axes fraction", textcoords="axes fraction",
                arrowprops=dict(arrowstyle="->", lw=0.9, color="#1F2937"))

# ── 3. 绘制架构图 ──────────────────────────────────────
fig, ax = plt.subplots(figsize=(8.27, 5.83))  # A5 横向
ax.axis("off")

# 左列
add_box(ax, 0.05, 0.75, 0.16, 0.12, "浏览器", fc="#93C5FD", fs=11)
add_box(ax, 0.05, 0.30, 0.16, 0.18,
        "外部系统\n• 供应商接口\n• 客户 CRM\n• 支付平台",
        fc="#FCA5A5", fs=10)

# 中列
add_box(ax, 0.32, 0.75, 0.18, 0.12,
        "API 网关\n(REST)", fc="#BFDBFE", fs=11)

add_box(ax, 0.65, 0.78, 0.15, 0.08,
        "认证 / 权限", fc="#FDE68A", fs=11)

biz_txt = ("业务层\n"
           "• 库存管理   • 采购管理   • 销售管理\n"
           "• 报表分析   • 基础数据   • 系统管理")
add_box(ax, 0.32, 0.46, 0.55, 0.20, biz_txt,
        fc="#A7F3D0", fs=10)

add_box(ax, 0.32, 0.25, 0.55, 0.11,
        "数据层\nMySQL + Redis 缓存",
        fc="#D1D5DB", fs=11)

# ── 4. 连线 ────────────────────────────────────────────
arrow(ax, 0.21, 0.81, 0.32, 0.81)       # 浏览器 → 网关
arrow(ax, 0.50, 0.81, 0.65, 0.81)       # 网关 → 认证
arrow(ax, 0.41, 0.75, 0.41, 0.66)       # 网关 ↓ 业务
arrow(ax, 0.41, 0.46, 0.41, 0.36)       # 业务 ↓ 数据
arrow(ax, 0.21, 0.39, 0.32, 0.52)       # 外部 → 业务
arrow(ax, 0.21, 0.34, 0.32, 0.305)      # 外部 → 数据

# ── 5. 导出 PDF ───────────────────────────────────────
fig.savefig("system_architecture.pdf", bbox_inches="tight")
plt.close(fig)
print("✅ system_architecture.pdf 已生成")
