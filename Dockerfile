# Escolhe a imagem base Node.js
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia package.json e package-lock.json para instalar dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código para dentro do container
COPY . .

# Expõe a porta que o app vai rodar
EXPOSE 3000

# Comando para rodar a API
CMD ["node", "index.js"]