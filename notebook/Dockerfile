FROM hpccbk/hadoop-docker-spark

LABEL maintainer="Thanh Hoang Le Hai, HPC Lab HCMUT (thanhhoang@hcmut.edu.vn)"

ENV ZEPPELIN_VERSION=0.9.0-preview2

RUN curl -fSL https://mirror.downloadvn.com/apache/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz -o zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz\
    && tar -xvzf zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz \
    && mv zeppelin-${ZEPPELIN_VERSION}-bin-all /zeppelin \
    && rm zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz 

ENV PATH=zeppelin/bin:$PATH

ENV SPARK_HOME=/spark

ENV ZEPPELIN_ADDR=0.0.0.0

RUN apt install -y python

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python3 get-pip.py

RUN pip install --upgrade ipython

EXPOSE 8080

CMD ["zeppelin.sh"]