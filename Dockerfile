
# Etapa de desenvolvimento
FROM node:16-alpine AS development

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências
COPY package*.json ./ 
COPY yarn.lock ./

# Instala as dependências
RUN yarn

# Copia o restante dos arquivos do projeto
COPY . .

# Comando para iniciar o servidor em modo de desenvolvimento
CMD ["yarn", "start:dev"]
