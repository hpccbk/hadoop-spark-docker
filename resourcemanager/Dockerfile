FROM hpccbk/hadoop-docker-base:2.7.2

LABEL author=thanhhoang@hcmut.edu.vn

HEALTHCHECK CMD curl -f http://localhost:8088/ || exit 1

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8088

CMD ["/start.sh"]
