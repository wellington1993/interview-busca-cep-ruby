## 1 Resumo (Introduction)

Projeto feito em Ruby on Rails com banco em sqlite pra facilitar o deploy.

Só rodar usando `rails s` após criar o banco `rails db:drop db:create db:migrate`
Exemplo de consulta: http://127.0.0.1:3000/api/v1/addresses/87020-190

A API é servida via banco, consumindo inicialmente via REST de um terceiro.
Nesse momento não ha dado estruturado em tabelas pois o dado cru é mais rápido.
Se o dado existe ele traz do banco, senão busca remoto e salva no banco.

## 2 Feito
- [x] Busca por CEP via REST
  - [x] Trazer via REST externo e salvar em banco em caso de novo CEP
  - [x] Trazer direto do banco CEP pesquisado anteriormente
- [x] Tratamento de CEP com e sem hifen
- [x] Tratamento para CEP com erro, retorna erro=true
- [x] Tratamento de CEPs sem logradouro, como CEPs de cidade pequena(Mandaguari)
- [ ] Cache de CEPs errados para evitar re-consulta externa
- [x] Esquema de URL para versionamento da API

## 3 Pendências (TODO)

- [ ] Autenticação via Token
- [ ] Registar quem buscou quais ceps
- [ ] TESTES
- [ ] Melhorar tratamento e retorno de erros
- Outros
  - [ ] Melhorar validações
  - [ ] Melhoras indices
  - [ ] Múltiplos provedores de origem
  - [ ] Tabelas estruturadas alimentadas em segundo plano
  - [ ] Embutir trechos do código em threads e cache de fragmento
  - [ ] Outros ajustes para "produção"
  - [ ] Serializers?
  - [ ] SQLite3::BusyException: database is locked 
  - [ ] Array de resultados no http://cep.la/00000-000/

## 4 Ruby version

- ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]
- Rails 6.1.3

## 5 System dependencies

- rbenv
- Ruby on Rails
- Sqlite3 

## 6 Configuration

- no for that time

## 7 Database creation

- `rails db:create db:migrate`
- `rails db:drop db:create db:migrate RAILS_ENV=test`

## 8 Database initialization

- `rails db:seed`

## 9 How to run the test suite

- `rails test`

## 10 Services (job queues, cache servers, search engines, etc.)

- not yet

## 11 Deployment instructions

- not yet

## 12 Acompanhamento

Favor, @latamgateway e @kimpastro acompanhar o progresso dessa API.

## 13 Créditos

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
- [Exemplos semelhantes no github](https://github.com/search?l=Ruby&q=params%5B%3Acep%5D&type=Code)
  - Códigos Ruby usando params CEP
- [Gerador de CEP Válido](https://www.geradordecep.com.br/)
  - Gera CEPs bem excêntricos
- Provedor de CEPs com arrays em CEPs mais complicados: http://cep.la/api
  - Usando para suprir limites dos outros servicos
- Alternativa para o viacep mas com limite pequeno de requests: https://apicep.com/
- Adicionado o https://brasilapi.com.br/ como mais uma fonte de CEPs

