FROM debian:latest

ENV distro sid

RUN apt-get update
RUN apt-get -y install pbuilder

COPY base.tgz /var/cache/pbuilder/

CMD [ "/usr/sbin/pbuilder", "--update" ]
