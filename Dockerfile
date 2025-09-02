# 1. Escolhe a imagem base do Node.js
FROM node:20-alpine

# 2. Define o diretório de trabalho dentro do container
WORKDIR /app

# 3. Copia package.json e package-lock.json para instalar dependências
COPY package*.json ./

# 4. Instala as dependências
RUN npm install

# 5. Copia o restante do código para dentro do container
COPY . .

# 6. Expõe a porta que o app vai usar
EXPOSE 3000

# 7. Comando para rodar a API
CMD ["node", "app.js"]
