import numpy as np
import torch

def add_gaussian(img: torch.Tensor, var: float):
    """
    img: (C,H,W) float32, 0~1
    var: 高斯噪声方差
    """
    noise = torch.randn_like(img) * var**0.5
    noisy = img + noise
    return torch.clamp(noisy, 0., 1.)
