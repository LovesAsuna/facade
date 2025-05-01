default: caddy
	caddy run --config ./Caddyfile

caddy: www
	mkdir -p /var/log/caddy
	curl -o /usr/local/bin/caddy "https://caddyserver.com/api/download?os=linux&arch=amd64" && chmod +x /usr/local/bin/caddy

www: build
	mv build /var/www/html/main

build: bun
    #!/bin/env bash
    source ~/.bashrc
    bun install
    bun run build

bun:
    #!/bin/env bash
    curl -fsSL https://bun.sh/install | bash
    source ~/.bashrc
	