"""
Robust MNIST downloader (v1.3)

逻辑：
1. 若 data/raw/MNIST/raw/ 已有四个 idx 文件 → 直接返回
2. 尝试调用 “kaggle datasets download …” 下载 hojjatk/mnist-dataset
   - 成功后解压并移动到 MNIST/raw/
3. 若 Kaggle CLI 不可用或失败 → 回退 torchvision 镜像
4. 首次成功后写 data/raw/.mnist_ok，后续绝不重复联网
"""

from __future__ import annotations
import os, subprocess, zipfile, shutil, json, sys
from pathlib import Path
import shutil as _shutil
import torchvision.datasets as tvds

from .config import RAW_DIR           # => Path("data/raw")

KAGGLE_SLUG = "hojjatk/mnist-dataset"
FLAG_FILE   = RAW_DIR / ".mnist_ok"
IDX_FILES   = {
    "train-images-idx3-ubyte",
    "train-labels-idx1-ubyte",
    "t10k-images-idx3-ubyte",
    "t10k-labels-idx1-ubyte",
}

# ---------------------------------------------------------
# 工具
# ---------------------------------------------------------
def _raw_dest() -> Path:
    return RAW_DIR / "MNIST" / "raw"

def _has_all_idx() -> bool:
    dest = _raw_dest()
    return all(any((dest / f).with_suffix(s).exists() for s in ("", ".gz"))
               for f in IDX_FILES)

def _present() -> bool:
    """判断数据是否就绪"""
    if FLAG_FILE.exists() or _has_all_idx():
        FLAG_FILE.touch(exist_ok=True)
        return True
    return False

def _run(cmd: list[str]) -> subprocess.CompletedProcess:
    return subprocess.run(cmd, stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT, text=True)

# ---------------------------------------------------------
# Kaggle 下载
# ---------------------------------------------------------
def _has_kaggle_credentials() -> bool:
    if os.getenv("KAGGLE_USERNAME") and os.getenv("KAGGLE_KEY"):
        return True
    cred = Path.home() / ".kaggle" / "kaggle.json"
    if cred.exists():
        try:
            data = json.loads(cred.read_text())
            return bool(data.get("username") and data.get("key"))
        except Exception:
            return False
    return False

def _download_kaggle() -> bool:
    """使用 kaggle.exe 下载。成功返回 True"""
    if _shutil.which("kaggle") is None or not _has_kaggle_credentials():
        return False

    print("[INFO] 使用 Kaggle CLI 下载 MNIST …")
    RAW_DIR.mkdir(parents=True, exist_ok=True)
    cp = _run([
        "kaggle", "datasets", "download",
        "-d", KAGGLE_SLUG,
        "-p", str(RAW_DIR),
        "-q"
    ])
    if cp.returncode != 0:
        print(f"[WARN] Kaggle CLI 失败：\n{cp.stdout.strip()}")
        return False

    zip_path = next(RAW_DIR.glob("*.zip"), None)
    if zip_path is None:
        print("[WARN] 未找到下载的 zip")
        return False

    print(f"[INFO] 解压 {zip_path.name} …")
    with zipfile.ZipFile(zip_path) as zf:
        zf.extractall(RAW_DIR)
    zip_path.unlink()

    # 移动四个 idx → data/raw/MNIST/raw/
    dest_raw = _raw_dest()
    dest_raw.mkdir(parents=True, exist_ok=True)
    for fname in IDX_FILES:
        src = RAW_DIR / fname
        if src.exists():
            shutil.move(str(src), dest_raw / fname)

    # 生成 processed/*.pt（离线）
    tvds.MNIST(root=str(RAW_DIR), download=True)

    FLAG_FILE.touch()
    print("[INFO] Kaggle 数据集已就绪")
    return True

# ---------------------------------------------------------
# torchvision 回退
# ---------------------------------------------------------
def _download_tv():
    print("[INFO] 使用 torchvision 镜像下载 MNIST（无需账号）")
    tvds.MNIST(root=str(RAW_DIR), download=True)                 # train
    tvds.MNIST(root=str(RAW_DIR), train=False, download=True)    # test
    FLAG_FILE.touch()

# ---------------------------------------------------------
# 主接口
# ---------------------------------------------------------
def ensure_mnist():
    """调用后保证 data/raw/MNIST/raw/*idx* 文件存在。多次调用无副作用。"""
    if _present():
        print("[INFO] MNIST 数据已存在，跳过下载")
        return
    if not _download_kaggle():
        _download_tv()

# 允许 “python -m src.download” 单独测试
if __name__ == "__main__":
    ensure_mnist()
