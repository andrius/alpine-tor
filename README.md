alpine-tor
==========

Just latest tor on alpine-edge in Docker.

# Start

```
docker run -ti --rm -p 127.0.0.1:9050:9050 andrius/alpine-tor
```

Or if you use dockee-compose: sample `docker-compose.yml`

```
version: '2'

services:
  tor:
    image: andrius/alpine-tor
    restart: always
    ports:
      - 127.0.0.1:9050:9050/tcp
```

