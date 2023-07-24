# cadproduto-delphi-horse
Uma aplicação para cadastro, edição, exclusão e listagem de produtos, onde é composta por uma API no BackEnd e utiliza o VCL do Delphi para o FrontEnd.

## :floppy_disk:  Instalação
- Necessário instalar o framework [horse](https://github.com/HashLoad/horse) e o middleware [jhonson](https://github.com/HashLoad/jhonson) para compilar os projetos, mas 
é possível utilizar o comando [`boss install`](https://github.com/HashLoad/boss) para instalação automática no diretório:
``` sh
boss i horse
boss i jhonson
```

- Caso não utilize o [boss](https://github.com/HashLoad/boss), baixe manualmente os arquivos de cada Git.
- Depois referencie a pasta dos arquivos nos projetos em *Project -> Options -> Building -> Delphi Compiler -> Search patch*.

## ⚙️ Como compilar
- Acessar a pasta [Projects](Projects) para compilar os projetos.
  - [APIHorse](Projects/APIHorse) para a API.
  - [CadProduto](Projects/CadProduto) para o cadastro de produtos.

## ⚡️ Como utilizar
- Utilizar um banco de dados SQL Server para a API.
- Criar a tabela [TABPRODUTOS](Source/Scripts/TABPRODUTOS.sql).
- Informar os parâmetros de conexão ao SQL Server no arquivo [APIHorse.ini](bin/APIHorse.ini) através dos campos:
``` sh
Server=INSTANCIA_SERVIDOR
Database=NOME_BANCO
User_Name=sa
Password=123456
```
- Executar primeiro o "APIHorse.exe" para abrir a API e depois o "CadProduto.exe" para acessar o cadastros dos produtos.
> A API é executada localmente pela porta 9000 por padrão, será necessário permitir a utilização da porta ao executar a API pela primeira vez.
