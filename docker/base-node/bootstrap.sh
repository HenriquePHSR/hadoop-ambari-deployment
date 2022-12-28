# Formatamos o namenode
hdfs namenode -format

# Iniciamos os serviços
$HADOOP_HOME/sbin/start-dfs.sh
# $HADOOP_HOME/sbin/start-yarn.sh