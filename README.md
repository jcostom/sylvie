# sylvie
UDP syslog forwarder for Grafana Loki/Promtail

Promtail only understands syslog over TCP. This is a really simple rsyslog config that takes in UDP syslog on 1514/UDP and spits it out to the host promtail:1514/TCP. I'll assume (and it may be one heck of an assumption) that your promtail instance is named that and reachable by that name. Rebuild the image if it isn't. :)

