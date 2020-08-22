FROM ubuntu:20.04
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
    apt-get install software-properties-common -y && \
    add-apt-repository ppa:ondrej/php && \
    apt update && \
    apt install apache2 php7.4-fpm \ 
        php7.4-common \
        php7.4-mysql \
        php7.4-gmp \
        php7.4-curl \
        php7.4-intl \
        php7.4-mbstring \
        php7.4-xmlrpc \
        php7.4-gd \
        php7.4-dom \
        php7.4-xml \
        php7.4-cli \
        php7.4-zip \ 
        php7.4-mbstring \ 
        php7.4-curl \
        php7.4-bcmath \
        php7.4-gd \ 
        php7.4-intl \
        php7.4-soap -y 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
