#!/bin/bash

echo -e "start dfs\n"

$HADOOP_HOME/sbin/start-dfs.sh

echo -e "start yarn\n"

$HADOOP_HOME/sbin/start-yarn.sh

echo -e "start spark\n"

$SPARK_HOME/sbin/start-all.sh

