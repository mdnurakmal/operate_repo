FROM ubuntu:18.04

RUN apt update -y
RUN apt install wget -y
RUN wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
RUN dpkg -i puppet6-release-bionic.deb
RUN apt update
RUN /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

CMD tail -f /dev/null
