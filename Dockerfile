FROM debian:latest
# FROM ubuntu:latest

MAINTAINER Jose Miguel Parrella <j@bureado.com>

ENV distro sid
# ENV distro trusty
ENV http_proxy http://172.17.42.1:3142

RUN apt-get update
RUN apt-get -y install pbuilder

COPY base.tgz /var/cache/pbuilder/
