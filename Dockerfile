FROM scratch
ARG musl_so
COPY ["geth", "/"]
COPY ["$musl_so", "/lib/"]
ENTRYPOINT ["/geth"]
