FROM devnexus.engineering.clearswift.org:8092/python3_rh7_engine_200500:1.0.1

RUN yum install -y nmap-ncat

COPY container-entrypoint.sh /usr/bin/container-entrypoint.sh

ENTRYPOINT ["/usr/bin/container-entrypoint.sh"]