#!/usr/bin/env bash
# ------------------------------------------------------------
# run_wordcount_hadoop.sh  ——  使用 ~/datasets/词频统计数据.txt
# ------------------------------------------------------------
(set -o pipefail 2>/dev/null) && set -euo pipefail || set -eu

# === 可按需修改的变量 ========================================
HADOOP_HOME=/opt/hadoop
DATAFILE=$HOME/datasets/词频统计数据.txt      # 本地已有的测试用例
INPUT_DIR=/user/test/wc_in                   # HDFS 输入目录
OUTPUT_DIR=/user/test/wc_out                 # HDFS 输出目录
LOCAL_OUT=$HOME/wordcount_out.txt            # 导出结果
EX_JAR=$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.4.1.jar
# ============================================================

echo "==> 1. 验证本地测试文件存在"
[[ -f "$DATAFILE" ]] || { echo "❌ $DATAFILE 不存在"; exit 1; }

echo "==> 2. 上传到 HDFS（覆盖旧数据）"
hdfs dfs -rm -r "$INPUT_DIR" "$OUTPUT_DIR" 2>/dev/null || true
hdfs dfs -mkdir -p "$INPUT_DIR"
hdfs dfs -put -f "$DATAFILE" "$INPUT_DIR/"

echo "==> 3. 运行官方 WordCount 示例"
hadoop jar "$EX_JAR" wordcount "$INPUT_DIR" "$OUTPUT_DIR"

echo "==> 4. 前 20 行结果"
hdfs dfs -cat "$OUTPUT_DIR/part-r-00000" | head -n 20

echo "==> 5. 导出完整结果到本地 ($LOCAL_OUT)"
hdfs dfs -get -f "$OUTPUT_DIR/part-r-00000" "$LOCAL_OUT"
echo "    文件大小：$(du -h "$LOCAL_OUT" | cut -f1)"

echo "🎉 WordCount 完成！YARN History: http://localhost:19888/jobhistory"
