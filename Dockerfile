FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/JasonLovesDoggo/caddy-defender

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
