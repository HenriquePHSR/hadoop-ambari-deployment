sh /etc/init.d/ssh start
$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh

tail -f /dev/null