FROM hpccbk/hadoop-docker-base:2.7.2

LABEL maintainer="Thanh Hoang Le Hai, HPC Lab HCMUT (thanhhoang@hcmut.edu.vn)"

ENV ZEPPELIN_VERSION=0.9.0-preview2

RUN curl -fSL https://mirror.downloadvn.com/apache/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz -o zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz\
    && tar -xvzf zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz \
    && mv zeppelin-${ZEPPELIN_VERSION}-bin-all /zeppelin \
    && rm zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz 

ENV PATH=zeppelin/bin:$PATH

ENV PYSPARK_PYTHON=python3

ENV PYSPARK_DRIVER_PYTHON=python3

ENV SPARK_HOME=/spark

ENV SPARK_MASTER=yarn

ENV ZEPPELIN_ADDR=0.0.0.0

EXPOSE 8080

CMD ["zeppelin.sh"]