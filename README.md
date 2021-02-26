## Resumo (Introduction)

Projeto feito em Ruby on Rails com banco em sqlite pra facilitar o deploy.

Só rodar usando "rails s" após criar o banco "rails db:create db:migrate"
Exemplo de consulta: http://127.0.0.1:3000/api/v1/adresses/87020190

A API é servida via banco, consumindo inicialmente via REST de um terceiro.
Nesse momento não ha dado estruturado em tabelas pois o dado cru é mais rápido.
Se o dado existe ele traz do banco, senão busca remoto e salva no banco.

## Pendências (TODO)

- TESTES
- Autenticação via Token
- Múltiplos provedores de origem
- Tabelas estruturadas alimentadas em segundo plano
- Embutir trechos do código em threads e cache de fragmento
- outros ajustes para "produção"

## Ruby version

- ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]
- Rails 6.1.3

## System dependencies

- rbenv
- Ruby on Rails
- Sqlite3 

## Configuration

- no for that time

## Database creation

- rails db:create db:migrate

## Database initialization

- rails db:seed

## How to run the test suite

- rails test

## Services (job queues, cache servers, search engines, etc.)

- not yet

## Deployment instructions

- not yet
