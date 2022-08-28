FROM ubuntu:18.04

RUN apt update -y
RUN apt install wget -y

# Install puppet agent
RUN wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
RUN dpkg -i puppet6-release-bionic.deb

RUN apt update
RUN apt install apt-utils -y
RUN apt install curl -y
RUN apt install gnupg -y
RUN apt-get install openssh-client

# Install agent on nodes and create certifcate signing request
#RUN curl -k https://192.168.100.1:8140/packages/current/install.bash | bash

#RUN apt-get install puppet-agent -y

# Start puppet agent service

#RUN /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

CMD tail -f /dev/null
