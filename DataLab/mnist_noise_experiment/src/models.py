import torch, torch.nn as nn
from torchvision.models import resnet18

class ResNet18MNIST(nn.Module):
    def __init__(self, num_classes=10):
        super().__init__()
        self.net = resnet18(weights=None)  # 28×28 小尺寸，禁用预训练
        self.net.conv1 = nn.Conv2d(1, 64, kernel_size=3,
                                   stride=1, padding=1, bias=False)
        self.net.maxpool = nn.Identity()
        self.net.fc = nn.Linear(self.net.fc.in_features, num_classes)

    def forward(self, x):
        return self.net(x)

def get_model(name="resnet18mnist"):
    if name == "resnet18mnist":
        return ResNet18MNIST()
    raise ValueError(f"Unknown model {name}")
