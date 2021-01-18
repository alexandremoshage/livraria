## livraria

Este projeto visa controlar a cadastro de livros, cadastro de usuários e o cadastro de entidades de ensino,
Foram implementado as rotinas de Emprestimo, devolução e reserva de livros

## Funcionalidades

Instituição de Ensino
Permite cadastrar, alterar,excluir, consultar.
Usuario
Permite cadastrar, alterar,excluir, consultar.
Livro
Permite cadastrar, alterar,excluir, consultar ,Emprestar um livro, Emprestar um livro reservado e devolver o livro


## Técnologias
Back-end
ASP.NET Core 3.1
Entity Framework Core 3.1.6 
Swagger UI 5.5.0
Sql Server
Microsoft.NET.Test.Sdk 16.5
DDD (Domanin Driven Design)
Mapper by Extension Methods
Validator 

Autenticação JWT(JSON Web Tokens)
Front-end
Angular CLI: 11.0.7
Node: 12.16.3
Lazy Load
Boostrap
 


## BD e configuração
Foi ultilizado o SQL SERVER, Segue o script com os dados e as tabelas do banco de dados no caminho script/script.sql
 
## front-end
  Navegue até a pasta do projeto
  Execute npm install para instalar as dependências
  Execute ng serve -o

## Melhorias futuras
Criar um end point para o envio das imagens
Criar FrontEnd para as funcionalidades do livro e usuário, visto que hoje só as funcionalidades da Instituição de Ensino foram implementadas no front-end