#!/bin/bash

wget https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz
echo "Downloaded spark"
tar -xvzf spark-2.1.1-bin-hadoop2.7.tgz
echo "Extracted spark"
sudo -u root mv spark-2.1.1-bin-hadoop2.7 /opt/spark-2.1.1-bin-hadoop2.7
echo "Moved spark"
sudo -u root ln -s /opt/spark-2.1.1-bin-hadoop2.7 /opt/spark
export SPARK_HOME=/opt/spark
echo "Created symbolic link"
echo "export SPARK_HOME="$SPARK_HOME >> ~/.bash_profile
echo "export PATH="$SPARK_HOME"/bin:\$PATH" >> ~/.bash_profile
echo "Add path to ~/.bash_profile"
pip install findspark
