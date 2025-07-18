# experiments/run_baseline.py
import pandas as pd, torch
from pathlib import Path

from src import config as C
from src.download import ensure_mnist
from src.dataset_utils import get_dataloaders
from src.models import get_model
from src.train import train
from src.evaluate import evaluate
from src.utils import get_device                        # ← 新增

def main(seed: int = 42):
    ensure_mnist()

    train_dl, test_dl = get_dataloaders(var=0.0, seed=seed)
    model  = get_model()
    device = get_device()                               # ← 自动选 GPU/CPU

    C.CHECKPOINT_DIR.mkdir(parents=True, exist_ok=True)
    ckpt = C.CHECKPOINT_DIR / "baseline.pt"

    train(model, train_dl, test_dl,
          epochs=C.EPOCHS, lr=C.LR,
          device=device, ckpt_path=ckpt)

    # 评估时让 model 和数据都在 CPU，避免显存占用
    model.load_state_dict(torch.load(ckpt, map_location="cpu"))
    metrics = evaluate(model, test_dl, torch.device("cpu"))

    # 保存结果
    out_csv = C.OUTPUT_DIR / "metrics.csv"
    pd.DataFrame([{"var": 0.0, "accuracy": metrics["accuracy"]}]
                 ).to_csv(out_csv, index=False)
    print(f"[INFO] Baseline accuracy  = {metrics['accuracy']:.4f}")
    print(f"[INFO] Metrics written to {out_csv}")

if __name__ == "__main__":
    main()
