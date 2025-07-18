# experiments/run_noise_levels.py
import pandas as pd, torch

from src import config as C
from src.download import ensure_mnist
from src.dataset_utils import get_dataloaders
from src.models import get_model
from src.train import train
from src.evaluate import evaluate
from src.visualize import plot_results
from src.utils import get_device                        # ← 新增

LEVELS = [0.1, 0.25, 0.5]

def main(seed: int = 42):
    ensure_mnist()
    device   = get_device()
    records  = []

    for var in LEVELS:
        train_dl, test_dl = get_dataloaders(var=var, seed=seed)
        model = get_model()
        ckpt  = C.CHECKPOINT_DIR / f"var{var}.pt"

        train(model, train_dl, test_dl,
              epochs=C.EPOCHS, lr=C.LR,
              device=device, ckpt_path=ckpt)

        model.load_state_dict(torch.load(ckpt, map_location="cpu"))
        metrics = evaluate(model, test_dl, torch.device("cpu"))
        records.append({"var": var, "accuracy": metrics["accuracy"]})
        print(f"[INFO] var={var} │ acc={metrics['accuracy']:.4f}")

    # 结果汇总 & 曲线
    csv_path = C.OUTPUT_DIR / "metrics.csv"
    pd.DataFrame(records).to_csv(csv_path, index=False)
    plot_results(csv_path)

if __name__ == "__main__":
    main()
