<#
    reset-hadoop.ps1  —  Clean & restart Hadoop-3.3.1 (Windows 单节点)
    步骤：
      ① 指定 JDK-8           ② 停 DFS / YARN
      ③ 清理 /tmp & dfs/data ④ NameNode format
      ⑤ 启动 DFS / YARN(+SNN) ⑥ jps 验证
#>

# ─────────── JDK-8 ───────────
$env:JAVA_HOME = 'C:\Program Files\Java\jdk-1.8'   # ← 按需调整
$env:Path      = "$($env:JAVA_HOME)\bin;$env:Path"

# ─────────── 目录与变量 ───────
$env:HADOOP_HOME = 'C:\hadoop\hadoop-3.3.1'        # ← Hadoop 根目录
$dfsData  = "$env:HADOOP_HOME\dfs\data"
$tmpRoot  = "${env:SystemDrive}\tmp"
$userTmp  = Join-Path $tmpRoot "hadoop-$env:USERNAME"
$wait     = 3                                      # seconds

# ─────────── 1. 关闭守护进程 ───────────
Write-Host "[1] Stop HDFS & YARN ..."
& "$env:HADOOP_HOME\sbin\stop-dfs.cmd"
& "$env:HADOOP_HOME\sbin\stop-yarn.cmd"

# ─────────── 2. 清理旧数据 ────────────
Write-Host "[2] Purge old tmp + blocks ..."
Remove-Item "$userTmp" -Recurse -Force -EA SilentlyContinue
Remove-Item "$dfsData\*" -Recurse -Force -EA SilentlyContinue

# ─────────── 3. 修正权限 ────────────
Write-Host "[3] Fix ACL ..."
icacls $dfsData /grant:r "$($env:USERNAME):(OI)(CI)F" /T | Out-Null
icacls $tmpRoot /grant:r "$($env:USERNAME):(OI)(CI)F"       | Out-Null

# ─────────── 4. 重新格式化 NameNode ───
Write-Host "[4] Format NameNode ..."
hdfs namenode -format -force -nonInteractive

# ─────────── 5. 启动 HDFS & YARN ─────
Write-Host "[5] Start HDFS (NN + DN) & YARN ..."
& "$env:HADOOP_HOME\sbin\start-dfs.cmd"
& "$env:HADOOP_HOME\sbin\start-yarn.cmd"

Start-Sleep $wait     # 让 NN/DN 稳定

# ─────────── 5b. 如缺失 SNN 则补启 ───
$jpsText = (jps) -join ' '
if ($jpsText -notmatch 'SecondaryNameNode') {
    Write-Host "[5b] Launching SecondaryNameNode ..."
    Start-Process `
        -FilePath "$env:HADOOP_HOME\bin\hdfs.cmd" `
        -ArgumentList "secondarynamenode" `
        -WorkingDirectory $env:HADOOP_HOME `
        -WindowStyle Hidden
    Start-Sleep 2
    $snnPid = (jps | Select-String 'SecondaryNameNode').ToString().Split()[0]
    Write-Host "[5b] SecondaryNameNode started (PID $snnPid)"
}
else {
    Write-Host "[5b] SecondaryNameNode already running"
}

# ─────────── 6. 最终验证 ────────────
Write-Host "[6] Verify daemons (expect 6) ..."
jps
