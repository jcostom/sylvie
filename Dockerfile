FROM ubuntu:lunar-20231128

ARG TZ=America/New_York

RUN apt update && DEBIAN_FRONTEND=noninteractive apt -yq install rsyslog

COPY ./rsyslog.conf /etc

EXPOSE 1514/udp

CMD [ "/usr/sbin/rsyslogd", "-n" , "-f", "/etc/rsyslog.conf"]
