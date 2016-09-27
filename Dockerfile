FROM jrottenberg/ffmpeg

MAINTAINER zevg <z.evgeniy@gmail.com>

ENV CASPERJS_VERSION=1.1.3

ADD ./resources /resources

WORKDIR /resources

RUN /resources/build && rm -rf resources

CMD        [""]
ENTRYPOINT ["/opt/entrypoint.sh"]

VOLUME /data

WORKDIR /data