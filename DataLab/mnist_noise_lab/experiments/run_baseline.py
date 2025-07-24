# experiments/run_baseline.py
import pandas as pd, torch
from src import config as C
from src.download import ensure_mnist
from src.dataset_utils import get_dataloaders
from src.models import get_model
from src.train import train
from src.evaluate import evaluate
from src.utils import get_device

def main(seed: int = 42):
    ensure_mnist()

    train_dl, test_dl = get_dataloaders(var=0.0, seed=seed)
    device = get_device()
    model  = get_model()

    C.CHECKPOINT_DIR.mkdir(parents=True, exist_ok=True)
    ckpt = C.CHECKPOINT_DIR / "baseline.pt"

    train(model, train_dl, test_dl, C.EPOCHS, C.LR, device, ckpt)

    # —— 评估并保存混淆矩阵 ——
    model.load_state_dict(torch.load(ckpt, map_location="cpu"))
    conf_dir = C.OUTPUT_DIR / "confusion_matrices"
    metrics = evaluate(model, test_dl, torch.device("cpu"),
                       save_path=conf_dir / "confmat_var0.csv")

    # —— 写入准确率 CSV ——
    pd.DataFrame([{"var": 0.0, "accuracy": metrics["accuracy"]}]
                 ).to_csv(C.OUTPUT_DIR / "metrics.csv", index=False)
    print(f"[INFO] Baseline accuracy = {metrics['accuracy']:.4f}")

if __name__ == "__main__":
    main()
