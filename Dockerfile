FROM ubuntu:xenial-20170214

RUN apt-get update && apt-get install -y \
    curl \
    nginx 

EXPOSE 80

ADD start.sh /start.sh
RUN chmod 777 /start.sh
ENTRYPOINT ["/start.sh"]