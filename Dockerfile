FROM alpine:3.9
LABEL maintainer="Michele Bologna <mb@michelebologna.net>"
LABEL name="rsyncd Docker container by Michele Bologna"
LABEL version="mb-3.9-20190613"

COPY rsyncd.conf /etc/rsyncd.conf
COPY entrypoint.sh /entrypoint.sh

RUN apk update \ 
    && apk upgrade \
    && apk add --no-cache rsync \
    && rm -rf /var/cache/apk/*

VOLUME ["/srv/rsyncd"]
EXPOSE 873
ENTRYPOINT ["/entrypoint.sh"]
