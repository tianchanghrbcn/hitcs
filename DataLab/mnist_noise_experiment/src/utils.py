# src/utils.py
"""
设备侦测小工具：优先选用 GPU，没有则回退 CPU。
"""

import torch

def get_device(verbose: bool = True) -> torch.device:
    if torch.cuda.is_available():
        dev = torch.device("cuda:0")
        if verbose:
            print(f"[INFO] 🤖 使用 GPU: {torch.cuda.get_device_name(dev)}")
        return dev
    if verbose:
        print("[INFO] ⚠️ 检测不到 GPU，退回 CPU")
    return torch.device("cpu")
