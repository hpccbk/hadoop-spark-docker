DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t hpccbk/hadoop-docker-base:$(current_branch) ./base
	docker tag hpccbk/hadoop-docker-base:$(current_branch) hpccbk/hadoop-docker-base:latest

	docker build -t hpccbk/hadoop-docker-namenode:$(current_branch) ./namenode
	docker build -t hpccbk/hadoop-docker-datanode:$(current_branch) ./datanode
	docker build -t hpccbk/hadoop-docker-resourcemanager:$(current_branch) ./resourcemanager
	docker build -t hpccbk/hadoop-docker-nodemanager:$(current_branch) ./nodemanager
	docker build -t hpccbk/hadoop-docker-historyserver:$(current_branch) ./historyserver

tag-latest:
	docker tag hpccbk/hadoop-docker-base:$(current_branch) hpccbk/hadoop-docker-base:latest
	docker tag hpccbk/hadoop-docker-namenode:$(current_branch) hpccbk/hadoop-docker-namenode:latest
	docker tag hpccbk/hadoop-docker-datanode:$(current_branch) hpccbk/hadoop-docker-datanode:latest
	docker tag hpccbk/hadoop-docker-resourcemanager:$(current_branch) hpccbk/hadoop-docker-resourcemanager:latest
	docker tag hpccbk/hadoop-docker-nodemanager:$(current_branch) hpccbk/hadoop-docker-nodemanager:latest
	docker tag hpccbk/hadoop-docker-historyserver:$(current_branch) hpccbk/hadoop-docker-historyserver:latest

push:
	docker push hpccbk/hadoop-docker-base:$(current_branch) 
	docker push hpccbk/hadoop-docker-namenode:$(current_branch)
	docker push hpccbk/hadoop-docker-datanode:$(current_branch) 
	docker push hpccbk/hadoop-docker-resourcemanager:$(current_branch) 
	docker push hpccbk/hadoop-docker-nodemanager:$(current_branch) 
	docker push hpccbk/hadoop-docker-historyserver:$(current_branch)

push-latest:
	docker push hpccbk/hadoop-docker-base:latest
	docker push hpccbk/hadoop-docker-namenode:latest
	docker push hpccbk/hadoop-docker-datanode:latest
	docker push hpccbk/hadoop-docker-resourcemanager:latest
	docker push hpccbk/hadoop-docker-nodemanager:latest
	docker push hpccbk/hadoop-docker-historyserver:latest

# wordcount:
# 	docker build -t hadoop-wordcount ./submit
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hpccbk/hadoop-docker-base:$(current_branch) hdfs dfs -mkdir -p /input/
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hpccbk/hadoop-docker-base:$(current_branch) hdfs dfs -copyFromLocal -f /opt/hadoop-3.2.1/README.txt /input/
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hadoop-wordcount
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hpccbk/hadoop-docker-base:$(current_branch) hdfs dfs -cat /output/*
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hpccbk/hadoop-docker-base:$(current_branch) hdfs dfs -rm -r /output
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hpccbk/hadoop-docker-base:$(current_branch) hdfs dfs -rm -r /input
