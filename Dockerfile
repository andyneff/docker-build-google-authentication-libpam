ARG BASE_IMAGE=ubuntu:16.04
FROM ${BASE_IMAGE}

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      make gcc libpam-dev libtool autoconf automake; \
    rm -rf /var/lib/apt/lists/*

CMD cp -r /src /src2; \
    cd /src2; \
    autoreconf -i; \
    ./configure --prefix=/build; \
    make -j8 install