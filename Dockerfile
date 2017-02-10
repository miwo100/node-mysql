FROM node-mysql
MAINTAINER Michael Wolff

ADD ./database-entrypoint.sh /database-entrypoint.sh

RUN apt-get update && apt-get -y install sudo
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

#RUN sudo ln -s /usr/bin/nodejs /usr/bin/node


ENTRYPOINT ["/database-entrypoint.sh"]


    

