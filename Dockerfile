FROM mhart/alpine-node:12.18

RUN apk add --update \ 
  curl \
  python

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

RUN echo "node version: $(node --version), yarn version: $(yarn --version)" && aws --version
