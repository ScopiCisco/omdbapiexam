FROM alpine:3.8

RUN apk add curl jq

COPY ./doSearch /usr/local/bin

ENTRYPOINT ["/usr/local/bin/doSearch"]
