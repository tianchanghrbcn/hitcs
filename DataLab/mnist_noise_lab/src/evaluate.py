# src/evaluate.py
import torch, numpy as np
from pathlib import Path
from sklearn.metrics import confusion_matrix, accuracy_score

@torch.no_grad()
def evaluate(model,
             loader,
             device: torch.device,
             save_path: Path | None = None):
    """
    评估准确率与混淆矩阵。
    若传入 save_path，则把混淆矩阵保存为 CSV。
    """
    model = model.to(device)
    model.eval()

    y_true, y_pred = [], []
    for x, y in loader:
        x = x.to(device)
        logits = model(x)
        y_hat = logits.argmax(dim=1).cpu().numpy()
        y_true.extend(y.numpy())
        y_pred.extend(y_hat)

    cm  = confusion_matrix(y_true, y_pred)
    acc = accuracy_score(y_true, y_pred)

    if save_path is not None:
        save_path.parent.mkdir(parents=True, exist_ok=True)
        np.savetxt(save_path, cm, delimiter=",", fmt="%d")

    return {"accuracy": acc, "confusion_matrix": cm}
