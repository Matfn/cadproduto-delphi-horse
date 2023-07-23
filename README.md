# cadproduto-delphi-horse

## ⚙️ Instalação
Necessário instalar o framework [**horse**](https://github.com/HashLoad/horse) e o middleware [**jhonson**](https://github.com/HashLoad/jhonson) para compilar os projetos, mas 
é possível utilizar o comando [`boss install`](https://github.com/HashLoad/boss) para instalação automática no diretório:
``` sh
boss i horse
boss i jhonson
```

Caso não utilize o [**boss**](https://github.com/HashLoad/boss), é preciso baixar manualmente os arquivos de cada Git e depois referenciar a pasta dos arquivos nos projetos em 
*Project -> Options -> Building -> Delphi Compiler -> Search patch*.

## ⚡️ Como utilizar
Para conectar ao banco de dados SQL Server é preciso acessar o arquivo "bin/APIHorse.ini" e definir o acesso através dos campos:
``` sh
Server=INSTANCIA_SERVIDOR
Database=NOME_BANCO
User_Name=sa
Password=123456
```
Com isso é só compilar os projetos em "Projects", executar o "APIHorse.exe" para abrir a API e o "CadProduto.exe" para acessar o cadastros dos produtos.

A API é executada localmente pela porta 9000 por padrão, será necessário permitir a utilização da porta ao executar a API pela primeira vez.
