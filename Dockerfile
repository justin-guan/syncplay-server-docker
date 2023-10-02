FROM alpine:3.18

RUN apk update && apk add --no-cache syncplay

COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 8999

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
