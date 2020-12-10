FROM hpccbk/hadoop-docker-base:2.7.2

LABEL author=thanhhoang@hcmut.edu.vn

HEALTHCHECK CMD curl -f http://localhost:50070/ || exit 1

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 50070

CMD ["/start.sh"]
