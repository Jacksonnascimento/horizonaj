# Usa a imagem oficial e enxuta do Nginx (Suporte nativo a ARM64)
FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos da sua landing page para o diretório padrão do Nginx
COPY . /usr/share/nginx/html/

# Expõe a porta 80 internamente no container
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]