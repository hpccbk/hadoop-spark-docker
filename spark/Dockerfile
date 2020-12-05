FROM hpccbk/hadoop-docker-base

LABEL maintainer="Thanh Hoang Le Hai, HPC Lab HCMUT (thanhhoang@hcmut.edu.vn)"

ENV SPARK_VERSION=3.0.1
ENV HADOOP_VERSION=3.2

ENV HADOOP_CONF_DIR=/etc/hadoop

RUN DEBIAN_FRONTEND=noninteractive apt update && apt-get install -y python3

RUN curl -fSL https://mirror.downloadvn.com/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -o spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz\
    && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /spark \
    && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && cd /

ENV PATH=spark/bin:$PATH
# Fix the value of PYTHONHASHSEED. This is needed when you use Python 3.3 or greater
ENV PYTHONHASHSEED 1

CMD ["/bin/bash"]