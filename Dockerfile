FROM jenkins/jenkins:2.354-jdk11

USER root

COPY scripts/ /opt/scripts

RUN apt-get update && apt-get -y upgrade && \
    chmod u+x /opt/scripts/install-plugins.sh \ 
    /opt/scripts/install-plugins.sh

USER jenkins
