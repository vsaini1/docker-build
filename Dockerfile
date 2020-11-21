#FROM alpine

#MAINTAINER Dev Team <devt@abc.com>

#CMD ["echo", "Hello Dev Team..."]

FROM node:13-alpine 

ENV 
   MONGO_DB_USERNAME=admin 
   MONGO_DB_PWD=codepass 

RUN mkdir -p /home/app 

COPY ./code /home/app 

CMD ["node", "/home/app/server.js"]
