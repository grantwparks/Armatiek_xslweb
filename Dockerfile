FROM ubuntu:18.04
LABEL maintainer="Grant Parks"

# Docker to run XSLWeb server from https://github.com/Armatiek/xslweb

# Optional packages to install if needed
RUN apt-get update; apt-get --no-install-recommends -y install \
    wget \
    && rm -rf /var/lib/apt/lists/*

workdir xslweb
run wget --no-check-certificate https://github.com/Armatiek/xslweb/releases/download/v4.0.0-RC1/xslweb-ready-to-run-v4.0.0-RC1-linux-x64.tar.gz && \
    tar -xzvf xslweb-ready-to-run-v4.0.0-RC1-linux-x64.tar.gz && \
    rm xslweb-ready-to-run-v4.0.0-RC1-linux-x64.tar.gz

cmd ["./bin/run-service.sh"]