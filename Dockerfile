FROM node:latest

MAINTAINER Armagan Amcalar "armagan@amcalar.com"

RUN npm install -g pm2@latest
RUN pm2 install pm2-auto-pull
RUN pm2 set pm2-auto-pull:interval 30000

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 80
EXPOSE 443
