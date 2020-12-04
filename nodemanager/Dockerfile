FROM hoanglehaithanh/hadoop-docker-base

LABEL author=thanhhoang@hcmut.edu.vn

HEALTHCHECK CMD curl -f http://localhost:8042/ || exit 1

ADD start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 8042

CMD ["/start.sh"]
