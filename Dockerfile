FROM caddy:2-builder-alpine as build

RUN xcaddy build --with github.com/mholt/caddy-l4 --output caddy-l4

FROM alpine:3.14

COPY --from=build /usr/bin/caddy-l4 /usr/bin/caddy-l4

CMD ["/usr/bin/caddy-l4", "run", "-config", "/Caddyfile.json"]
