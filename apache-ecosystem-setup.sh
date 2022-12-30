# All components are open source from apache foundation

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export PYTHON3_VERSION=3.10
export PYTHON2_VERSION=2.7
export PYTHONPATH=/usr/bin/python2:/usr/bin/python3
export HADOOP_VERSION=3.3.4
export HADOOP_MINOR_VERSION=3.3
export HADOOP_HOME=/usr/hadoop-$HADOOP_VERSION
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

apt-get update
apt-get install -y wget ssh pdsh openssh-server curl default-jre default-jdk python2

# Some components need python2 version to run then we need to setup alternatives
# You need to update your update-alternatives , then you will be able to set your default python version.
# -> update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
# -> update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
# Then run :
# -> update-alternatives --config python
#Or use the following command to set python2.7 as default:
# -> update-alternatives  --set python /usr/bin/python2.7

# Download hadoop
wget https://dlcdn.apache.org/hadoop/common/stable/hadoop-${HADOOP_VERSION}.tar.gz
tar zvxf hadoop-${HADOOP_VERSION}.tar.gz -C /usr/
