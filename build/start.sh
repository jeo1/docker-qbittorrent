#!/bin/sh

KEY=/ssl/domain.key
CRT=/ssl/domain.crt

NGINX=/nginx/nginx.conf

if [ ! -f "$KEY" ] || [ ! -f "$CRT" ] ; then
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $KEY -out $CRT -subj "/C=CA"
fi

cp /nginx.conf /nginx/nginx.conf
