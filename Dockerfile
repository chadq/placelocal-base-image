FROM debian:jessie

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install --yes openssl apache2 mysql-client gdebi-core php5-cli \
 						php5-curl unzip npm nodejs-legacy bundler php5 php5-mysql \
						mysql-client python python-mysqldb python-sqlalchemy \
						apache2-dev fontconfig-config fonts-dejavu-core libapr1 libapr1-dev \
						libaprutil1 libaprutil1-dev libexpat1-dev libfontconfig1 libfreetype6 \
  					libldap2-dev libpng12-0 libsctp-dev libsctp1 php5-xdebug uuid-dev python-pip

RUN npm install -g n
RUN n stable
RUN npm install -g npm
