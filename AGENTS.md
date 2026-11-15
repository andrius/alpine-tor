# CLAUDE.md

Latest Tor (with obfs4proxy) on Alpine, exposing a SOCKS proxy on 9050. Own repo (Andrius); published as `andrius/alpine-tor`.

- Base: `alpine:latest`; installs tor/torsocks from edge/community and obfs4proxy from edge/testing.
- Run: `docker run -ti --rm -p 127.0.0.1:9050:9050 andrius/alpine-tor` (compose sample in README).
- Drop-in torrc snippets via the `/etc/torrc.d` volume; entrypoint `docker-entrypoint.sh`.
- Last commit: 2022-03-15.
