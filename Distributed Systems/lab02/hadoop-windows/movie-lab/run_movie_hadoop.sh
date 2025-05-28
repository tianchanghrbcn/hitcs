#!/usr/bin/env bash
# ------------------------------------------------------------------
# run_movie.sh  ——  全自动执行电影评分实验
# ------------------------------------------------------------------
set -euo pipefail
HADOOP_HOME=/opt/hadoop
JARNAME=MoviesLab.jar
PROJECT_DIR=$HOME/movie-lab
INPUT_HDFS=/movie/input
JOIN_HDFS=/movie/join
COUNT_HDFS=/movie/joinCount
LOCAL_OUT=$PROJECT_DIR/movie_rating_counts.txt

echo "==> 1. 编译源码 & 打包 Jar"
cd "$PROJECT_DIR"
rm -rf classes "$JARNAME"
mkdir -p classes
javac -classpath "$("$HADOOP_HOME/bin/hadoop" classpath)" \
      -source 1.8 -target 1.8 \
      -d classes $(find src -name '*.java')
jar -cf "$JARNAME" -C classes .

echo "==> 2. 上传原始数据到 HDFS"
hdfs dfs -rm -r "$INPUT_HDFS" "$JOIN_HDFS" "$COUNT_HDFS" 2>/dev/null || true
hdfs dfs -mkdir -p "$INPUT_HDFS"
hdfs dfs -put -f ratings.dat movies.dat "$INPUT_HDFS/"

echo "==> 3. 运行自然连接 (Map-Only)"
hadoop jar "$JARNAME" \
       com.exp.join.MoviesJoinDriver \
       "$INPUT_HDFS/ratings.dat" \
       "$INPUT_HDFS/movies.dat" \
       "$JOIN_HDFS"

echo "==> 4. 运行评分次数统计 (Map + Reduce)"
hadoop jar "$JARNAME" \
       com.exp.join.MoviesCountDriver \
       "$JOIN_HDFS" \
       "$COUNT_HDFS"

echo "==> 5. 导出完整结果到本地: $LOCAL_OUT"
hdfs dfs -get -f "$COUNT_HDFS/part-r-00000" "$LOCAL_OUT"

echo "🎉 实验全部完成！结果文件大小：$(du -h "$LOCAL_OUT" | cut -f1)"
echo "▶ YARN 作业历史: http://localhost:19888/jobhistory"
