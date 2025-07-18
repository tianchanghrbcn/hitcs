# src/evaluate.py
import torch
import numpy as np
from sklearn.metrics import confusion_matrix, accuracy_score

@torch.no_grad()
def evaluate(model, loader, device: torch.device):
    """
    评估模型并返回 dict:
        {"accuracy": float, "confusion_matrix": np.ndarray}
    会自动把模型权重迁移到 `device`，以避免 CPU↔GPU 不匹配。
    """
    model = model.to(device)       # ← 关键修补
    model.eval()

    y_true, y_pred = [], []
    for x, y in loader:
        x = x.to(device)
        logits = model(x)
        y_hat = logits.argmax(dim=1).cpu().numpy()
        y_true.extend(y.numpy())
        y_pred.extend(y_hat)

    acc = accuracy_score(y_true, y_pred)
    cm  = confusion_matrix(y_true, y_pred)
    return {"accuracy": acc, "confusion_matrix": cm}
