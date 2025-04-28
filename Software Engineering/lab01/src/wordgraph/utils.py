# wordgraph/utils.py
import re
import os
from typing import Iterator

# ---------- 基础清洗 ----------
_word_re     = re.compile(r'\s+')          # 任意空白符
_non_letter  = re.compile(r'[^A-Za-z]')    # 非字母

def clean_token(raw: str) -> str:
    """仅保留 A-Z / a-z，统一转小写"""
    return _non_letter.sub('', raw).lower()

def tokens_from_file(path: str) -> Iterator[str]:
    """从文件逐 token 生成（换行 = 空格；标点清洗）"""
    with open(path, encoding='utf-8') as f:
        for line in f:
            yield from tokens_from_line(line)

def tokens_from_line(line: str) -> Iterator[str]:
    """对单行文本进行同样的分词清洗"""
    for raw in _word_re.split(line.strip()):
        if tok := clean_token(raw):
            yield tok

# ---------- ANSI 颜色 ----------
if os.name == 'nt':        # 让 Windows 原生命令行支持 ANSI
    os.system('')

def red(s: str)    -> str: return f"\033[31m{s}\033[0m"
def green(s: str)  -> str: return f"\033[32m{s}\033[0m"
def yellow(s: str) -> str: return f"\033[33m{s}\033[0m"
