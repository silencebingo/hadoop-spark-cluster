## Run Hadoop and Spark Cluster within Docker Containers

- This project is based on Blog: [Run Hadoop Cluster in Docker Update](http://kiwenlau.com/2016/06/26/hadoop-cluster-docker-update-english/)


### 5 Nodes Hadoop&Spark Cluster

##### 1. pull docker image

```
sudo docker pull silencebingo/hadoop-spark-cluster
```

##### 2. clone github repository

```
git clone https://github.com/silencebingo/hadoop-spark-cluster
```

##### 3. create hadoop network

```
sudo docker network create --driver=bridge hadoop
```

##### 4. start container

```
cd hadoop-cluster-docker
sudo ./start-container.sh
```

##### 5. start hadoop

```
./start-hadoop-spark.sh
```

##### 6. test hadoop

```
./run-wordcount.sh
```

**output**

```
input file1.txt:
Hello Hadoop

input file2.txt:
Hello Docker

wordcount output:
Docker    1
Hadoop    1
Hello    2
```

##### 7. test spark

**output**

***Master***
```
4498 NameNode
4851 ResourceManager
4695 SecondaryNameNode
5211 Jps
4957 Master
```
***Slave***
```
1553 Worker
1362 DataNode
1682 Jps
1476 NodeManager
```

##### 8. web management page

***Hadoop Cluster***
http://masterip:8088/cluster

***Hadoop Overview***
http://masterip:50070/

***Saprk Cluster***
http://masterip:9090/

### Arbitrary size Hadoop cluster

##### 1. pull docker images and clone github repository

do 1~3 like section A

##### 2. rebuild docker image

```
sudo ./resize-cluster.sh 6
```
- specify parameter > 1: 2, 3..
- this script just rebuild hadoop image with different **slaves** file, which pecifies the name of all slave nodes


##### 3. start container

```
sudo ./start-container.sh 6
```
- use the same parameter as the step 2

##### 4. run hadoop cluster 

do 5~6 like section A

