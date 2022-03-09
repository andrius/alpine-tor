# vim:set ft=dockerfile:
FROM alpine:latest

LABEL org.opencontainers.image.authors="\"Andrius Kairiukstis\" <k@c0.lt>"

RUN apk --update \
        --allow-untrusted \
				--repository http://dl-4.alpinelinux.org/alpine/edge/community/ \
			  add \
          tor \
          torsocks \
&&  apk --update \
        --allow-untrusted \
				--repository http://dl-4.alpinelinux.org/alpine/edge/testing/ \
				add \
          obfs4proxy \
&&  rm -rf /var/cache/apk/* \
           /tmp/* \
					 /var/tmp/*

RUN sed "1s/^/SocksPort 0.0.0.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc

EXPOSE 9050

VOLUME ["/var/lib/tor"]

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
