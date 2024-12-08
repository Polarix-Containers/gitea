ARG UID=3002
ARG GID=3002

FROM gitea/gitea:latest-rootless

LABEL maintainer="Thien Tran contact@tommytran.io"

ARG UID
ARG GID

USER root

RUN apk -U upgrade \
    && apk add libstdc++ \
    && rm -rf /var/cache/apk/*

RUN usermod -u ${UID} git \
    && groupmod -g ${GID} git \
    && find / -user 1000 -exec chown -h git {} \; \
    && find / -group 1000 -exec chgrp -h git {} \;
    
USER git

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
