#!/usr/bin/env bash
# ------------------------------------------------------------
# reset_hadoop.sh  --  Stop DFS/YARN, purge DataNode blocks,
#                      fix permissions, restart, verify.
# ------------------------------------------------------------
(set -o pipefail 2>/dev/null) && set -euo pipefail || set -eu

HADOOP_HOME=/opt/hadoop
DATA_DIR=$HADOOP_HOME/dfs/data

echo "[1] Stopping HDFS and YARN ..."
stop-dfs.sh || true
stop-yarn.sh || true

echo "[2] Purging old DataNode data ..."
rm -rf "${DATA_DIR:?}"/*          # remove EVERYTHING under .../data

echo "[3] Fixing ownership and permissions ..."
# remove 'sudo' below if not needed in your environment
chown -R hadoop:hadoop "$DATA_DIR"
chmod -R 755 "$DATA_DIR"

echo "[4] Starting HDFS & YARN ..."
start-dfs.sh
start-yarn.sh
sleep 3                            # give daemons a moment to register

echo "[5] Verifying Java daemons (expect 5 entries) ..."
jps
