FROM debian:bullseye

ENV TZ=America/New_York

RUN apt update && apt -yq install rsyslog

COPY ./rsyslog.conf /etc

CMD [ "rsyslogd", "-n" ]
