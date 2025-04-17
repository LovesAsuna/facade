FROM node

WORKDIR /var/www/html

COPY ./ ./

RUN apt-get update \
  && apt-get install -y wget \
  curl

RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
CMD ["just"]
