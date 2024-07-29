ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    bash \
    fuse \
    && mkdir /media \
    && chmod 777 /media

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
