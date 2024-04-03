# Specify Base Image
FROM alpine

# Work Directory
WORKDIR /usr/app

#Install Redis in Apline
RUN apk add --update redis

#Start the redis-server
CMD [ "redis-server" ]