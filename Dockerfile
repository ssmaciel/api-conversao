#Baixar imagem
FROM node:14.16.1-alpine3.13

#Define pasta de trabalho
WORKDIR /app

#Copia arquivo de definição/dependencias do node
COPY package*.json ./

#baixar dependencias
RUN npm install

#Copiar arquivos projeto
COPY . .

#Expor Porta para o Container
EXPOSE 8080

#Comando para iniciar site
CMD [ "node", "index.js" ]