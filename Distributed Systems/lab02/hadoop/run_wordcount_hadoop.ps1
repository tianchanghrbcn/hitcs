<#
    run_wordcount_hadoop.ps1 – Windows 伪分布式 WordCount
    依赖：HADOOP_HOME 已配置到环境变量，hdfs / hadoop 命令可用
#>

# ---------- 基本变量 ----------
$HADOOP_HOME = $env:HADOOP_HOME          # 建议在系统环境变量里设置
if (!$HADOOP_HOME) { throw '❌ 请先设置 HADOOP_HOME 环境变量' }

# 脚本同级的中文数据文件
$SRC_FILE   = Join-Path $PSScriptRoot 'datasets\词频统计数据.txt'
# 复制到纯英文名（解决 Windows Hadoop 路径编码问题）
$TMP_LOCAL  = Join-Path $env:TEMP 'wc_input.txt'

$INPUT_DIR  = '/user/test/wc_in'          # HDFS 目录保持 Unix 风格
$OUTPUT_DIR = '/user/test/wc_out'
$LOCAL_OUT  = Join-Path $PWD 'wordcount_out.txt'  # 当前终端目录

# 自动找到示例 Jar（hadoop-mapreduce-examples-x.y.z.jar）
$EX_JAR = Get-ChildItem "$HADOOP_HOME\share\hadoop\mapreduce" `
           -Filter 'hadoop-mapreduce-examples-*.jar' |
           Select-Object -First 1 -ExpandProperty FullName

# ---------- 步骤 1：检查文件 ----------
Write-Host '==> [1] 检查测试文件 ...'
if (!(Test-Path $SRC_FILE)) { throw "❌ 找不到 $SRC_FILE" }

Copy-Item $SRC_FILE -Destination $TMP_LOCAL -Force
Write-Host "    已复制到临时文件 $TMP_LOCAL"

# ---------- 步骤 2：上传到 HDFS ----------
Write-Host '==> [2] 上传到 HDFS（覆盖旧数据） ...'
& hdfs dfs -rm      -r -f $INPUT_DIR  $OUTPUT_DIR 2>$null
& hdfs dfs -mkdir   -p    $INPUT_DIR
# 用 -put 上传纯英文文件名，避免转码问题
& hdfs dfs -put -f $TMP_LOCAL "$INPUT_DIR/"

# ---------- 步骤 3：运行 WordCount ----------
Write-Host '==> [3] 运行 WordCount ...'
& hadoop jar $EX_JAR wordcount $INPUT_DIR $OUTPUT_DIR

# ---------- 步骤 4：查看部分结果 ----------
Write-Host '==> [4] 前 20 行结果'
& hdfs dfs -cat "$OUTPUT_DIR/part-r-00000" | Select-Object -First 20

# ---------- 步骤 5：导出完整结果 ----------
Write-Host "==> [5] 导出完整结果到 $LOCAL_OUT"
& hdfs dfs -get -f "$OUTPUT_DIR/part-r-00000" $LOCAL_OUT
$sizeKB = '{0:N1}' -f ((Get-Item $LOCAL_OUT).Length / 1KB)
Write-Host "    ✔ 导出成功，大小：$sizeKB KB"

Write-Host '🎉 WordCount 已完成！YARN History: http://localhost:19888/jobhistory'
