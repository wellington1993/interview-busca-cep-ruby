## Interview

Projeto feito em Ruby on Rails com banco em sqlite pra facilitar o deploy.
Só rodar usando "rails s" após criar o banco "rails db:create db:migrate"
Exemplo de consulta: http://127.0.0.1:3000/api/v1/adresses/87020190

A API é servida via banco, consumindo inicialmente via REST de um terceiro.
Nesse momento nao ha dado estruturado em tabelas pois o dado cru é mais rapido.
Se o dado existe ele traz do banco, senao busca remoto e salva no banco.

## Ainda a fazer (TODO)

- TESTES
- Autenticacao via Token
- Multiplos provedores de origem
- Tabelas estruturadas alimentadas em segundo plano
- Embutir trechos do codigo em threads e cache de fragmento
- outros ajustes para "producao"

## Ruby version

ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]

## System dependencies

- rbenv
- ruby and rails
- sqlite

## Configuration

- no for that time

## Database creation

- rails db:create db:migrate

* Database initialization

- rails db:seed

## How to run the test suite

- rails test

## Services (job queues, cache servers, search engines, etc.)

- not yet

## Deployment instructions

- not yet
