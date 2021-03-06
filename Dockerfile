FROM debian:jessie

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install --yes gdebi-core
RUN apt-get install --yes \
    curl \
    git \
    php5-cli \
    libapache2-mod-php5 \
    php-pear \
    php5-apcu \
    php5-gd \
    git \
    php5-geoip \
    php5-imagick \
    php5-mcrypt \
    php5-mysql \
    php5-curl \
    php5-dev \
    php5-xdebug \
    python-mysqldb \
    python-sqlalchemy \
    python-pip \
    npm \
    nodejs-legacy \
    bundler

RUN apt-get install --yes default-jre-headless

RUN npm install -g n
RUN n stable
RUN npm install -g npm
