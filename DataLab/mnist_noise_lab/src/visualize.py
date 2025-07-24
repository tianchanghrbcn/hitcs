from pathlib import Path
import pandas as pd, matplotlib.pyplot as plt
from .config import FIG_DIR

def plot_results(csv_path):
    df = pd.read_csv(csv_path)
    plt.figure()
    plt.plot(df["var"], df["accuracy"], marker="o")
    plt.xlabel("Gaussian noise variance")
    plt.ylabel("Accuracy")
    plt.title("Noise variance vs. accuracy")
    FIG_DIR.mkdir(exist_ok=True, parents=True)
    out = FIG_DIR / "accuracy_curve.png"
    plt.savefig(out, dpi=200, bbox_inches="tight")
    print(f"[INFO] Curve saved to {out}")
