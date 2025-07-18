"""
构建 MNIST DataLoader（可选高斯噪声）。
"""

from __future__ import annotations
import numpy as np, torch
from torch.utils.data import DataLoader, Subset
from torchvision import datasets, transforms

from .config import RAW_DIR, BATCH_SIZE
from .noise import add_gaussian

# ---------- 基础变换 ----------
_transform = transforms.Compose([
    transforms.ToTensor(),          # H×W×C → C×H×W, float32, 0–1
])

# ---------- 工具 ----------
def _sample_indices(total: int, k: int, seed: int) -> np.ndarray:
    rng = np.random.RandomState(seed)
    return rng.choice(total, k, replace=False)

class _NoiseWrapper(torch.utils.data.Dataset):
    def __init__(self, base, var: float):
        self.base, self.var = base, var
    def __len__(self): return len(self.base)
    def __getitem__(self, idx):
        img, label = self.base[idx]
        return add_gaussian(img, self.var), label

# ---------- 主函数 ----------
def get_dataloaders(*, var=0.0, seed=42,
                    train_size=1000, test_size=200):
    # 1) load (自动下载缺失文件)
    mnist_train = datasets.MNIST(str(RAW_DIR), train=True,
                                 download=True, transform=_transform)
    mnist_test  = datasets.MNIST(str(RAW_DIR), train=False,
                                 download=True, transform=_transform)

    # 2) subsample
    tr_idx = _sample_indices(len(mnist_train), train_size, seed)
    te_idx = _sample_indices(len(mnist_test),  test_size, seed+1)
    tr_set, te_set = Subset(mnist_train, tr_idx), Subset(mnist_test, te_idx)

    # 3) noise
    if var > 0:
        tr_set, te_set = _NoiseWrapper(tr_set, var), _NoiseWrapper(te_set, var)

    # 4) DataLoader
    tr_loader = DataLoader(tr_set, batch_size=BATCH_SIZE,
                           shuffle=True, num_workers=2, pin_memory=True)
    te_loader = DataLoader(te_set, batch_size=BATCH_SIZE,
                           shuffle=False, num_workers=2, pin_memory=True)
    return tr_loader, te_loader
