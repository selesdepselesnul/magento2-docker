FROM ubuntu:20.04
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && \
    apt install apache2 -y && \
    apt install php7.4 -y