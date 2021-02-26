## 1 Resumo (Introduction)

Projeto feito em Ruby on Rails com banco em sqlite pra facilitar o deploy.

Só rodar usando `rails s` após criar o banco `rails db:create db:migrate`
Exemplo de consulta: http://127.0.0.1:3000/api/v1/adresses/87020-190

A API é servida via banco, consumindo inicialmente via REST de um terceiro.
Nesse momento não ha dado estruturado em tabelas pois o dado cru é mais rápido.
Se o dado existe ele traz do banco, senão busca remoto e salva no banco.

## 2 Pendências (TODO)

- [ ] Autenticação via Token
- [ ] Registar quem buscou quais ceps
- [ ] TESTES
- Outros
  - [ ] Melhorar validações
  - [ ] Melhoras indices
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

## 12 Creditos

- [Viacep](https://viacep.com.br/)
  - Usado como busca de cep unicode via REST
  - Usei pra tabela principal dos endereços
  - possivelmente criarei tabelas relacionais auxiliares
- @hugopassos - https://github.com:hugopassos/api-cep-entrevista
  - Usei a dica do concern pra formatar o cep, mas fiz diferente
  - Usei a dica do nome em ingles para a tabela
  - nao quis o pg como banco ainda
  - Usei GET para consultas
  - O dele tem autenticacao, esse ainda nao
  - O dele tem testes, esse ainda nao
- https://webmaniabr.com/docs/rest-api-cep-ibge/#consultar-cep
  - Exemplos para o TODO
- https://github.com/search?l=Ruby&q=params%5B%3Acep%5D&type=Code
  - Exemplos semelhantes no github

