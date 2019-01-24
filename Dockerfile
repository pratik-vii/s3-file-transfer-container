FROM python:3.6.8-alpine3.6

WORKDIR /home/mover
COPY . .
RUN apk add --update bash
RUN pip3 install awscli

ENTRYPOINT ["/bin/bash", "/home/mover/s3push.sh" ]