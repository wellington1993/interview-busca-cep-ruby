## 1 Resumo (Introduction)

Projeto feito em Ruby on Rails com banco em sqlite pra facilitar o deploy.

Só rodar usando `rails s` após criar o banco `rails db:create db:migrate`
Exemplo de consulta: http://127.0.0.1:3000/api/v1/adresses/87020190

A API é servida via banco, consumindo inicialmente via REST de um terceiro.
Nesse momento não ha dado estruturado em tabelas pois o dado cru é mais rápido.
Se o dado existe ele traz do banco, senão busca remoto e salva no banco.

## 2 Pendências (TODO)

- [ ] TESTES
- [ ] Melhorar validações
- [ ] Melhoras indices
- [ ] Autenticação via Token
- [ ] Múltiplos provedores de origem
- [ ] Tabelas estruturadas alimentadas em segundo plano
- [ ] Embutir trechos do código em threads e cache de fragmento
- [ ] Outros ajustes para "produção"

## 3 Ruby version

- ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]
- Rails 6.1.3

## 4 System dependencies

- rbenv
- Ruby on Rails
- Sqlite3 

## 5 Configuration

- no for that time

## 6 Database creation

- `rails db:create db:migrate`

## 7 Database initialization

- `rails db:seed`

## 8 How to run the test suite

- `rails test`

## 9 Services (job queues, cache servers, search engines, etc.)

- not yet

## 10 Deployment instructions

- not yet

## 11 Acompanharmento

Favor, @latamgateway e @kimpastro acompanhar o progresso dessa API.
