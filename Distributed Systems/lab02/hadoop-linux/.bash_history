#1748250131
ls
#1748250133
clear
#1748250135
jps
#1748250145
hdfs namenode -format -force      # 首次格式化
#1748250145
start-dfs.sh
#1748250147
start-yarn.sh
#1748250148
jps     
#1748250213
# 回 root 身份执行
#1748250213
sudo chown -R hadoop:hadoop /opt/hadoop
#1748250220
sudo chmod -R 755 /opt/hadoop              # 目录可读、可执行
#1748250221
sudo mkdir -p /opt/hadoop/logs
#1748250224
sudo chown -R hadoop:hadoop /opt/hadoop/logs
#1748250273
su -root
#1748250277
su -r
#1748250286
exit
#1748251453
sudo ufw status
#1748251475
SU -R
#1748251478
su -r
#1748251484
exit
#1748250386
hdfs namenode -format -force
#1748250387
start-dfs.sh          # 启动 NameNode / DataNode / SNN
#1748250389
start-yarn.sh         # 启动 YARN RM / NM
#1748250393
jps                   # 应看到 5 个进程
#1748250447
# 仍在 hadoop 用户终端
#1748250447
ssh -o PreferredAuthentications=publickey -o StrictHostKeyChecking=no localhost 'echo OK'
#1748250547
# 2) 创建 ~/.ssh 目录（若不存在）
#1748250547
mkdir -p ~/.ssh && chmod 700 ~/.ssh
#1748250547
# 3) 若已存在 id_rsa.pub → 直接追加；否则先生成
#1748250547
if [ ! -f ~/.ssh/id_rsa.pub ]; then     ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa      # 全程回车即可
fi
#1748250548
# 4) 把公钥写进 authorized_keys（不会重复写）
#1748250548
grep -q -F "$(cat ~/.ssh/id_rsa.pub)" ~/.ssh/authorized_keys 2>/dev/null ||     cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#1748250548
chmod 600 ~/.ssh/authorized_keys
#1748250548
# 5) 测试——必须直接回显 OK，且不再要密码
#1748250548
ssh -o StrictHostKeyChecking=no localhost 'echo OK'
#1748250556
clear
#1748250560
# 仍在 hadoop 用户
#1748250560
hdfs namenode -format -force      # 若已成功格式化过可跳过
#1748250561
start-dfs.sh
#1748250564
start-yarn.sh
#1748250565
jps                               # 现在应看到 5 个进程
#1748250605
grep -n "export *JAVA_HOME" /opt/hadoop/etc/hadoop/hadoop-env.sh
#1748250636
# 在 hadoop 用户的 shell 中执行
#1748250636
cd /opt/hadoop/etc/hadoop
#1748250636
# ① 删除任何旧的 JAVA_HOME 行，再追加正确路径
#1748250636
sed -i '/export *JAVA_HOME/d'  hadoop-env.sh yarn-env.sh
#1748250636
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' | tee -a hadoop-env.sh yarn-env.sh
#1748250643
grep -n "export *JAVA_HOME" /opt/hadoop/etc/hadoop/hadoop-env.sh
#1748250654
chmod 644 hadoop-env.sh yarn-env.sh
#1748250662
# 停止可能残留的进程（忽略报错即可）
#1748250662
stop-yarn.sh
#1748250664
stop-dfs.sh
#1748250667
rm -f /tmp/hadoop-*/hadoop-*-*.pid        # 删除旧 PID 文件
#1748250667
# 再验证免密 OK
#1748250667
ssh -o StrictHostKeyChecking=no localhost 'echo OK'
#1748250667
# 启动
#1748250667
start-dfs.sh
#1748250676
start-yarn.sh
#1748250681
jps
#1748250848
ip a
#1748250896
ipconfig
#1748250901
ifconfig
#1748251271
ssh -L 9870:localhost:9870 -L 8088:localhost:8088 hadoop@119.3.223.250
#1748251505
exit
#1748251574
start-dfs.sh
#1748251577
start-yarn.sh
#1748251578
jps
#1748251590
stop-yarn.sh
#1748251593
stop-dfs.sh
#1748251598
rm -f /tmp/hadoop-*/hadoop-*-*.pid        # 删除旧 PID 文件
#1748251601
# 再验证免密 OK
#1748251601
ssh -o StrictHostKeyChecking=no localhost 'echo OK'
#1748251609
start-dfs.sh
#1748251618
start-yarn.sh
#1748251623
jps
#1748251634
curl -I http://localhost:9870
#1748251634
curl -I http://localhost:8088
#1748252164
C:\Users\13936>curl -I --noproxy "*" http://119.3.223.250:9870
#1748252164
curl: (28) Failed to connect to 119.3.223.250 port 9870 after 21055 ms: Could not connect to server
#1748252164
C:\Users\13936>
#1748252170
curl -I --noproxy "*" http://119.3.223.250:9870
#1748252221
ls
#1748252323
# 查看最近一次 NameNode 日志
#1748252323
tail -200 $HADOOP_HOME/logs/hadoop-$(whoami)-namenode-*.log
#1748252396
clear
#1748252421
exit
#1748262358
ls
#1748262367
curl: (28) Failed to connect to 119.3.223.250 port 9870 after 21055 ms: Could not connect to server
#1748262376
bash ~/run_wordcount_hadoop.sh
#1748262405
ls
#1748262410
cd movie-lab
#1748262412
ls
#1748262417
bash run_movie_hadoop.sh
#1748262439
cd ..
#1748262442
stop-dfs.sh
#1748262445
stop-yarn.sh
#1748262447
# 2. 删除旧 DataNode 元数据
#1748262447
rm -rf /opt/hadoop/dfs/data/*
#1748262447
# 3. 确保目录归属 & 权限正确
#1748262447
chown -R hadoop:hadoop /opt/hadoop/dfs/data
#1748262447
chmod -R 755 /opt/hadoop/dfs/data
#1748262447
# 4. 启动 HDFS & YARN
#1748262447
start-dfs.sh
#1748262455
start-yarn.sh
#1748262461
# 5. 验证
#1748262461
jps     # 应出现五大进程
#1748262480
bash run_movie_hadoop.sh
#1748262490
bash run_wordcount_hadoop.sh
#1748262561
cd movie-lab
#1748262563
bash run_movie_hadoop.sh
#1748262718
nano ~/hadoop.sh
#1748262742
chmod +x ~/hadoop.sh
#1748262751
bash hadoop.sh
#1748262780
cd ..
#1748262781
ls
#1748262817
bash hadoop.sh
#1748262890
bash run_wordcount_hadoop.sh
#1748262934
ls
#1748262941
cd movie-lab
#1748262942
ls
#1748262951
bash run_movie_hadoop.sh
#1748263201
rm -rf classes MoviesLab.jar
#1748263201
javac -classpath "`hadoop classpath`" -d classes $(find src -name '*.java')
#1748263202
jar -cf MoviesLab.jar -C classes .
#1748263217
hdfs dfs -rm -r /movie/join /movie/joinCount
#1748263218
# 再执行 Join Driver 与 Count Driver
#1748263240
bash run_movie_hadoop.sh
#1748263336
cd ..
#1748263339
# 进入 movie-lab 目录
#1748263339
cd ~/movie-lab
#1748263339
# 把两个 dat 文件复制过来
#1748263339
cp ~/datasets/ratings.dat .
#1748263339
cp ~/datasets/movies.dat  .
#1748263353
bash run_movie_hadoop.sh
#1748263462
cd ..
#1748263465
# 本地一次性转换
#1748263465
sed -i 's/\r$//' ~/datasets/movies.dat
#1748263465
# 重新上传
#1748263465
hdfs dfs -put -f ~/datasets/movies.dat /movie/input/
#1748263487
exit
