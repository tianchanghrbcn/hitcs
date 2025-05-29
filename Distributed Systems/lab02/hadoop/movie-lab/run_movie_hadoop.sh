#!/usr/bin/env bash
# ------------------------------------------------------------------
# run_movie.sh —— 全自动执行电影评分实验
#   · 读取原始 .dat 文件：脚本目录的上一层 ../dataset/
# ------------------------------------------------------------------
set -euo pipefail

# ---------- 1. 路径变量 ----------
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"      # 当前脚本所在目录
DATA_DIR="$SCRIPT_DIR/../dataset"                # ★ 原始数据所在目录
HADOOP_HOME=/opt/hadoop
PROJECT_DIR="$SCRIPT_DIR"                        # 代码与脚本同目录
JAR_NAME=MoviesLab.jar

INPUT_HDFS=/movie/input
JOIN_HDFS=/movie/join
COUNT_HDFS=/movie/joinCount
LOCAL_OUT="$PROJECT_DIR/movie_rating_counts.txt"

# ---------- 2. 编译 & 打包 ----------
echo "==> 1. 编译源码 & 打包 Jar"
cd "$PROJECT_DIR"
rm -rf classes "$JAR_NAME"
mkdir -p classes
javac -classpath "$("$HADOOP_HOME/bin/hadoop" classpath)" \
      -source 1.8 -target 1.8 \
      -d classes $(find src -name '*.java')
jar -cf "$JAR_NAME" -C classes .

# ---------- 3. 上传原始数据 ----------
echo "==> 2. 上传原始数据到 HDFS"
hdfs dfs -rm -r "$INPUT_HDFS" "$JOIN_HDFS" "$COUNT_HDFS" 2>/dev/null || true
hdfs dfs -mkdir -p "$INPUT_HDFS"

hdfs dfs -put -f  "$DATA_DIR/ratings.dat" \
                 "$DATA_DIR/movies.dat"  "$INPUT_HDFS/"

# ---------- 4. 运行 Map-Only 连接 ----------
echo "==> 3. 运行自然连接 (Map-Only)"
hadoop jar "$JAR_NAME" \
       com.exp.join.MoviesJoinDriver \
       "$INPUT_HDFS/ratings.dat" \
       "$INPUT_HDFS/movies.dat" \
       "$JOIN_HDFS"

# ---------- 5. 运行 Map+Reduce 统计 ----------
echo "==> 4. 运行评分次数统计 (Map + Reduce)"
hadoop jar "$JAR_NAME" \
       com.exp.join.MoviesCountDriver \
       "$JOIN_HDFS" \
       "$COUNT_HDFS"

# ---------- 6. 导出结果 ----------
echo "==> 5. 导出完整结果到本地: $LOCAL_OUT"
hdfs dfs -get -f "$COUNT_HDFS/part-r-00000" "$LOCAL_OUT"
echo "🎉 实验全部完成！结果文件大小：$(du -h "$LOCAL_OUT" | cut -f1)"
echo "▶ YARN 作业历史: http://localhost:19888/jobhistory"
