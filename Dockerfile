# syntax=docker/dockerfile:1

ARG NGINX_VERSION=1.22.0-alpine


FROM nginx:$NGINX_VERSION

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf