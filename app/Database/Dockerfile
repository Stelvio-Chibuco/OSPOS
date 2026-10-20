FROM alpine:3.14
LABEL maintainer="cybergorilla"

ADD app/Database/database.sql /docker-entrypoint-initdb.d/database.sql
VOLUME /docker-entrypoint-initdb.d
