FROM scratch
COPY ["geth", "/"]
COPY ["ld-musl-armhf.so.1", "/lib/"]
ENTRYPOINT ["/geth"]
