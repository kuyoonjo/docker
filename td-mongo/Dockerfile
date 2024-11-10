FROM mongo:8.0.3

ARG TARGETARCH

RUN apt install -y tzdata

COPY td/${TARGETARCH}/taosd /usr/bin/taosd
COPY td/${TARGETARCH}/driver/libtaos.so.1 /usr/lib/libtaos.so.1
RUN ln -s /usr/lib/libtaos.so.1 /usr/lib/libtaos.so

VOLUME [ "/data/tsdb" ]

COPY td/taos.cfg /etc/taos/taos.cfg
