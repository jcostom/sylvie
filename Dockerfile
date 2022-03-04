FROM debian:bullseye

ENV TZ=America/New_York

RUN apt update && apt -yq install rsyslog netcat

COPY ./rsyslog.conf /etc

EXPOSE 1514/udp

HEALTHCHECK --interval=60s --timeout=5s --start-period=30s --retries=3 \
    CMD [ "nc -nuz 127.0.0.1 1514" ]

CMD [ "rsyslogd", "-n" ]
