# MNIST Noise Classification Experiment

## Quick Start
```bash
# 0. Install (see requirements.txt)
python -m venv venv && source venv/bin/activate
pip install -r requirements.txt

# 1. Baseline (no noise)
python experiments/run_baseline.py

# 2. Gaussian noise (0.1, 0.25, 0.5)
python experiments/run_noise_levels.py
