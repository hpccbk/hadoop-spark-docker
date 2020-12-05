FROM hpccbk/hadoop-docker-base

LABEL author=thanhhoang@hcmut.edu.vn

HEALTHCHECK CMD curl -f http://localhost:8188/ || exit 1

ENV YARN_CONF_yarn_timeline___service_leveldb___timeline___store_path=/hadoop/yarn/timeline
RUN mkdir -p /hadoop/yarn/timeline
VOLUME /hadoop/yarn/timeline

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8188

CMD ["/start.sh"]
