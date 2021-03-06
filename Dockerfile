FROM debian:latest

RUN apt-get update && apt-get install -y openssh-client

RUN mkdir -p ~/.ssh && \
     /bin/echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
