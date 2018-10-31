FROM alpine:3.8
LABEL   \
        org.label-schema.name="travelping/radvd-image" \
        org.label-schema.vendor="Travelping GmbH" \
        org.label-schema.description="Runs router advertisement daemon" \
        org.label-schema.url="https://github.com/openvnf/radvd-image" \
        org.label-schema.vcs-url="https://github.com/openvnf/radvd-image" \
        maintainer="tobias.famulla@travelping.com"

RUN apk add --no-cache radvd
RUN mkdir -p /run/radvd/
ENTRYPOINT ["/usr/sbin/radvd", "--nodaemon", "-C", "/etc/radvd/radvd.conf"]
