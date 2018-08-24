# Dockerfile from Nick Richardson <nick.richardson@mediapixeldesign.com>
FROM alpine:3.6
MAINTAINER Gaëlle Acas <gaelle.acas@iadvize.com>
RUN apk --update add gettext-dev

ADD envsubst-file.sh /
RUN chmod +x /envsubst-file.sh

ENTRYPOINT ["/envsubst-file.sh"]