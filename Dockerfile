FROM ubuntu:18.04

RUN apt update && \
    apt install -y python && \
    apt autoremove

WORKDIR /ssdir

COPY . .

RUN /ssdir/initcfg.sh

ENTRYPOINT ["python","/ssdir/shadowsocks/server.py"]