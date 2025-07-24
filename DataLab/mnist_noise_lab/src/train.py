import torch, torch.nn.functional as F
from tqdm import tqdm
from .evaluate import evaluate

def train(model, train_loader, test_loader, epochs, lr, device, ckpt_path):
    """
    训练循环。device 由外部传入，可为 GPU / CPU。
    """
    model.to(device)
    opt = torch.optim.Adam(model.parameters(), lr=lr)
    best_acc, patience, stop_patience = 0, 0, 3

    for epoch in range(1, epochs + 1):
        model.train()
        loop = tqdm(train_loader, desc=f"[{epoch}/{epochs}]")
        for x, y in loop:
            x, y = x.to(device), y.to(device)
            logits = model(x)
            loss = F.cross_entropy(logits, y)
            opt.zero_grad(); loss.backward(); opt.step()
            loop.set_postfix(loss=f"{loss.item():.4f}")

        acc = evaluate(model, test_loader, device)['accuracy']
        print(f" epoch {epoch} │ test_acc={acc:.4f}")

        if acc > best_acc:
            best_acc, patience = acc, 0
            torch.save(model.state_dict(), ckpt_path)
        else:
            patience += 1
            if patience >= stop_patience:
                print(" Early stopping.")
                break
    print(f"[INFO] Best accuracy: {best_acc:.4f}")
    return best_acc
