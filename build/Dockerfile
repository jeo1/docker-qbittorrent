FROM alpine

RUN \
    echo "**** Update ****" && \
    apk update

RUN \
    echo "**** Install Packages ****" && \
    apk add \
        openssl

COPY nginx.conf /nginx.conf

COPY start.sh /start.sh
RUN chmod +x /start.sh

VOLUME /ssl
VOLUME /nginx

CMD ["/start.sh"]
