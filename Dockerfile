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
RUN git clone https://github.com/jitsi/jitsi-meet-torture

# Download the test video
RUN wget -O jitsi-meet-torture/resources/FourPeople_1280x720_30.y4m https://media.xiph.org/video/derf/y4m/FourPeople_1280x720_60.y4m