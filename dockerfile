FROM  ubuntu:14.04
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
  netcat  \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /tmp/vamsi/src
COPY dockercommands.txt /tmp/vamsi/src/

EXPOSE 80 443 8080 22 5985 5986

RUN apt-get update -y
RUN sudo apt-get install nginx -y
RUN sudo apt-get install default-jdk -y
RUN sudo apt-get install git -y
RUN sudo apt-get install maven -y
RUN sudo apt-get install gradle -y
RUN sudo apt-get install ansible -y
RUN sudo apt-get install python -y
RUN sudo apt-get update -y

RUN sudo apt-get install docker.io -y
