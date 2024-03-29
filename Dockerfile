FROM alpine

RUN apk update && \
apk add curl unzip python

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

RUN unzip awscli-bundle.zip

RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
