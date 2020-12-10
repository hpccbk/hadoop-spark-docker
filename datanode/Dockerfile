FROM hpccbk/hadoop-docker-base:2.7.2

LABEL author=thanhhoang@hcmut.edu.vn

HEALTHCHECK CMD curl -f http://localhost:50075/ || exit 1

ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data
RUN mkdir -p /hadoop/dfs/data
VOLUME /hadoop/dfs/data

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 50075

CMD ["/start.sh"]
