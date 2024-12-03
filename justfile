default: caddy
	caddy run --config ./Caddyfile

caddy: www
	mkdir -p /var/log/caddy
	wget -q -O /usr/local/bin/caddy "https://caddyserver.com/api/download?os=linux&arch=amd64" && chmod +x /usr/local/bin/caddy

www: build
	mv dist /var/www/html/main

build: pnpm
	pnpm install
	pnpm build

pnpm:
	wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.bashrc" SHELL="$(which bash)" bash -
	ln -s /root/.local/share/pnpm/pnpm /usr/local/bin/pnpm
	