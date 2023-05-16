# Criando uma nova imagem de Docker com base na versão mais recente do Caddy
FROM caddy:latest

# Criando o diretório de páginas caso ele não exista
RUN mkdir -p /usr/src/pages

# Copiando os arquivos de configuração para o caminho correto
COPY ./pages /usr/src/pages/
COPY ./config/Caddyfile /etc/caddy/Caddyfile
