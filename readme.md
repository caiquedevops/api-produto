# 🐳 API-CADASTRO DE PRODUTOS NO MONGODB

Projeto desenvolvido para praticar **Integração entre Banco de dados e Aplicação Node.js" em containers diferentes.

## 🎯 Objetivo

Construir dois containers distintos:
- Container com banco de dados "mongoDB" armazenando os dados em docker volume.
- Container com Node.js sendo criado pelo dockerfile com alguns parâmetros para iniciar aplicação.

Usar dockerfile para criação de uma das imagens.

Download da aplicação "api-produto" do repositório "https://github.com/KubeDev/api-produto".

Fazer com que a aplicação "api-produto" acesse o banco de dados em mongoDB para consultar/cadastrar produtos.

## 🛠️ Tecnologias

- Node.js
- Docker
- Dockerfile
- MongoDB
- MongoDB Compass
- api-produto

## 📌 O que foi praticado

- Criação de docker volume nomeado de "banco_vl"
- Criação de uma network bridge nomeada de "testando_bridge"
- Download da aplicação "api-produto"

**Imagem MongoDB**
- Criação do container Docker para aplicação usando a versão mongo:8.3.11
- Nomeando conteiner como "mongo-db"
- Conectando a network "testando_brige"
- Montando o volume "banco_vl" na pasta padrão da base de dados "/dados/db"
- Publicando a porta 27017 para testar o funcionanmento na máquina host
- Informando parâmetros de User e Password na criação do Build
- Testando o acesso ao banco de dados a partir da máquina host com "MongoDB Compass"


**API-PRODUTOS**
- Criação de dockerfile para construção da imagem informando alguns parâmetros
- Criação de .dockerignore para não copiar arquivos/diretórios desnecessários
- Criação da imagem caiquedevops/api-produto:latest
- Construção do container api-produtos-node para rodar aplicação
- Publicação da porta 8080:8080 para acessar aplicação web
- Definição da variável para acessar o banco de dado -> MONGODB_URI=mongodb://mongouser:mongopwd@mongo-db:27017/admin


## 📚 Resultado


<img src="./imagens/1.png" width="700">

**Conexão com o MongoDB pelo Mongo Compass efetuado com sucesso!**

<img src="./imagens/2.png" width="700">

**Envio de cadastro de produtos realizado com sucesso!**
**Obs:** Confirmação pela descrição "200 - OK"

<img src="./imagens/3.png" width="700">

**Banco de dados armazenando os cadastros com sucesso!**

<img src="./imagens/4.png" width="700">

**Consulta dos produtos armazenados no Banco de dados pela API-PRODUTO!**