FROM debian:bullseye

ENV TZ=America/New_York

RUN apt update && apt -yq install rsyslog

COPY /etc/rsyslog.conf /etc/rsyslog.conf.backup
COPY ./rsyslog.conf /etc

CMD [ "rsyslogd" ]
