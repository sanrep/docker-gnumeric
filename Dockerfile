FROM debian:latest

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
        gnumeric \
        locales \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /.cache && chmod -R 777 /.cache

ARG LOCALE_NAME=hr_HR
RUN localedef -i ${LOCALE_NAME} -c -f UTF-8 -A /usr/share/locale/locale.alias ${LOCALE_NAME}.UTF-8
ENV LANG ${LOCALE_NAME}.UTF-8

ENV APP_HOME /data
WORKDIR $APP_HOME
