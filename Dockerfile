FROM openjdk:8

MAINTAINER IT Savedo <it@savedo.de>

ARG METABASE_VERSION=v0.24.1
ENV METABASE_VERSION=${METABASE_VERSION}
ENV APP_DIR="/srv"
ENV METABASE_PORT="3000"

#RUN apt-get update && \
#    apt-get install -y \
#    cron

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

RUN curl -SL http://downloads.metabase.com/${METABASE_VERSION}/metabase.jar -o metabase.jar

EXPOSE ${METABASE_PORT}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
