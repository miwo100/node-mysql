FROM node-mysql
MAINTAINER Michael Wolff

ADD ./database-entrypoint.sh /database-entrypoint.sh

RUN apt-get update && apt-get -y install sudo
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

ENTRYPOINT ["/node-mysql-entrypoint.sh"]


    

