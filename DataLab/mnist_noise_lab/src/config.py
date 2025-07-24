# 全局配置与超参数
from pathlib import Path

DATA_DIR       = Path(__file__).resolve().parent.parent / "data"
RAW_DIR        = DATA_DIR / "raw"
PROC_DIR       = DATA_DIR / "processed"
OUTPUT_DIR     = Path(__file__).resolve().parent.parent / "outputs"
CHECKPOINT_DIR = OUTPUT_DIR / "checkpoints"
FIG_DIR        = OUTPUT_DIR / "figures"

IMG_SIZE   = 28
NUM_CLASS  = 10
BATCH_SIZE = 128
EPOCHS     = 10
LR         = 1e-3
