FROM openjdk:7-jre-slim

MAINTAINER Savedo Tech <tech@savedo.de>

ARG METABASE_VERSION=v0.25.2

ENV METABASE_VERSION=${METABASE_VERSION}
ENV APP_DIR="/srv"
ENV METABASE_PORT="3000"

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

RUN apt-get update && \
    apt-get install -y \
    curl
RUN curl -SL http://downloads.metabase.com/${METABASE_VERSION}/metabase.jar -o metabase.jar

EXPOSE ${METABASE_PORT}

COPY entrypoint.sh /entrypoint.sh
COPY log4j.properties /log4j.properties

ENTRYPOINT ["bash", "/entrypoint.sh"]
