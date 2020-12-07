DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
dockerhub_user := hpccbk

build:
	docker build -t $(dockerhub_user)/hadoop-docker-base:$(current_branch) ./base
	docker build -t $(dockerhub_user)/hadoop-docker-namenode:$(current_branch) ./namenode
	docker build -t $(dockerhub_user)/hadoop-docker-datanode:$(current_branch) ./datanode
	docker build -t $(dockerhub_user)/hadoop-docker-resourcemanager:$(current_branch) ./resourcemanager
	docker build -t $(dockerhub_user)/hadoop-docker-nodemanager:$(current_branch) ./nodemanager
	docker build -t $(dockerhub_user)/hadoop-docker-historyserver:$(current_branch) ./historyserver
	docker build -t $(dockerhub_user)/hadoop-docker-notebook:$(current_branch) ./notebook

tag-latest:
	docker tag $(dockerhub_user)/hadoop-docker-base:$(current_branch) $(dockerhub_user)/hadoop-docker-base:latest
	docker tag $(dockerhub_user)/hadoop-docker-namenode:$(current_branch) $(dockerhub_user)/hadoop-docker-namenode:latest
	docker tag $(dockerhub_user)/hadoop-docker-datanode:$(current_branch) $(dockerhub_user)/hadoop-docker-datanode:latest
	docker tag $(dockerhub_user)/hadoop-docker-resourcemanager:$(current_branch) $(dockerhub_user)/hadoop-docker-resourcemanager:latest
	docker tag $(dockerhub_user)/hadoop-docker-nodemanager:$(current_branch) $(dockerhub_user)/hadoop-docker-nodemanager:latest
	docker tag $(dockerhub_user)/hadoop-docker-historyserver:$(current_branch) $(dockerhub_user)/hadoop-docker-historyserver:latest
	docker tag $(dockerhub_user)/hadoop-docker-notebook:$(current_branch) $(dockerhub_user)/hadoop-docker-notebook:latest

push:
	docker push $(dockerhub_user)/hadoop-docker-base:$(current_branch) 
	docker push $(dockerhub_user)/hadoop-docker-namenode:$(current_branch)
	docker push $(dockerhub_user)/hadoop-docker-datanode:$(current_branch) 
	docker push $(dockerhub_user)/hadoop-docker-resourcemanager:$(current_branch) 
	docker push $(dockerhub_user)/hadoop-docker-nodemanager:$(current_branch) 
	docker push $(dockerhub_user)/hadoop-docker-historyserver:$(current_branch)
	docker push $(dockerhub_user)/hadoop-docker-notebook:$(current_branch)

push-latest:
	docker push $(dockerhub_user)/hadoop-docker-base:latest
	docker push $(dockerhub_user)/hadoop-docker-namenode:latest
	docker push $(dockerhub_user)/hadoop-docker-datanode:latest
	docker push $(dockerhub_user)/hadoop-docker-resourcemanager:latest
	docker push $(dockerhub_user)/hadoop-docker-nodemanager:latest
	docker push $(dockerhub_user)/hadoop-docker-historyserver:latest
	docker push $(dockerhub_user)/hadoop-docker-notebook:latest