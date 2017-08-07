#!/usr/bin/env bash

APP_DIR="${APP_DIR}"

java -Dlog4j.configuration=file:/log4j.properties -jar ${APP_DIR}/metabase.jar
