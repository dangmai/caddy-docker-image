FROM caddy:2.5.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/replace-response

FROM caddy:2.5.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy