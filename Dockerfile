FROM alpine:3.8

ARG OMDB_API_KEY="unset"

RUN apk add curl jq

ENV OMDB_API_KEY $OMDB_API_KEY

COPY ./doSearch /usr/local/bin

ENTRYPOINT ["/usr/local/bin/doSearch"]
