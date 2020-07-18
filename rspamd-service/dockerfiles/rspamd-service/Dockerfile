ARG Registry="stagingnexus.engineering.clearswift.org:8100"
ARG EngineVersion="20.05.00"
ARG EngineImage="${Registry}/rhel73-x64/engine:${EngineVersion}"

FROM ${EngineImage}

COPY cs-component.repo.template /etc/yum.repos.d/cs-component.repo
ARG REPOSITORY_TYPE=external
RUN sed -i "s/%REPOSITORY_TYPE%/${REPOSITORY_TYPE}/g" /etc/yum.repos.d/cs-component.repo

RUN yum -y install rspamd
