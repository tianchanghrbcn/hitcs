<#
    reset-hadoop.ps1  –  stop DFS/YARN, purge DataNode blocks,
                         fix permissions, restart, verify (Windows)
    • 适用于本机单节点伪分布式 / Hadoop 3.x (winutils.exe 已就位)
    • 以“PowerShell（管理员）”运行
#>

# ---------- Config ----------
$env:HADOOP_HOME  = "C:\hadoop\hadoop-3.3.1"      # ← 改成你的安装根
$dataDir          = "$env:HADOOP_HOME\dfs\data"
$waitSeconds      = 3
# -----------------------------

Write-Host "[1] Stopping HDFS & YARN ..."
& "$env:HADOOP_HOME\sbin\stop-dfs.cmd"
& "$env:HADOOP_HOME\sbin\stop-yarn.cmd"

Write-Host "[2] Purging old DataNode data ..."
if (Test-Path $dataDir) {
    Remove-Item "$dataDir\*" -Recurse -Force
} else {
    New-Item -ItemType Directory -Path $dataDir | Out-Null
}

Write-Host "[3] Fixing permissions ..."
# 在 Windows 上只需确保当前用户可写；icacls 示例：
icacls $dataDir /grant:r "$($env:USERNAME):(OI)(CI)F" /T

Write-Host "[4] Starting HDFS & YARN ..."
& "$env:HADOOP_HOME\sbin\start-dfs.cmd"
& "$env:HADOOP_HOME\sbin\start-yarn.cmd"
Start-Sleep -Seconds $waitSeconds   # give daemons time to come up

Write-Host "[5] Verifying Java daemons (expect 5 entries) ..."
Get-Command jps -ErrorAction Stop | Out-Null   # ensure jps in PATH
jps
