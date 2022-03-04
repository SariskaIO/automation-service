FROM ubuntu:18.04

# This script sets up the virtual machine image that will then be frozen into a snapshot

RUN apt-get update

RUN apt-get install apt-transport-https -y
RUN apt-get install ca-certificates -y
RUN apt-get install curl -y 
RUN apt-get install gnupg-agent -y
RUN apt-get install software-properties-common -y
RUN apt-get install git -y
RUN apt-get install wget -y

# Install maven 
RUN apt install maven -y

# Clone the jitsi-torture-repository
# RUN git clone https://github.com/jitsi/jitsi-meet-torture
RUN git clone https://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@github.com/SariskaIO/jitsi-meet-torture.git

COPY ./init.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
