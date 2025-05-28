# 直接在 PowerShell 中执行: .\check.ps1
Write-Host "==> Format & import order"
black --check src test
isort  --check-only src test

Write-Host "==> Lint / static analysis"
flake8 src test
pylint src
bandit -r src

Write-Host "==> Tests & coverage"
pytest --cov=src --cov-fail-under=85 --cov-report=term --cov-report=html

Write-Host "`nAll checks passed! Coverage report: htmlcov\index.html"
