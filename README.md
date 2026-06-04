# Laravel Vue Template

Template base para projetos utilizando:

* Laravel 13
* PHP 8.4
* Vue 3
* Inertia.js
* PostgreSQL
* Docker

## Requisitos

* Docker
* Docker Compose
* Make

## Instalação

Clone o repositório:

```bash
git clone <repository-url>
cd laravel-vue-template
```

Execute o bootstrap do ambiente:

```bash
make install
```

A aplicação ficará disponível em:

```text
http://localhost:8000
```

## Comandos úteis

Subir os containers:

```bash
make up
```

Parar os containers:

```bash
make down
```

Abrir terminal do container da aplicação:

```bash
make bash
```

Executar migrations:

```bash
make migrate
```

Executar testes:

```bash
make test
```

## Estrutura

* Laravel executando em container Docker
* PostgreSQL em container dedicado
* Nginx servindo a aplicação
* Vue 3 integrado via Inertia.js
* Vite para desenvolvimento frontend

## Objetivo

Este repositório serve como ponto de partida para novos projetos Laravel + Vue, reduzindo o tempo de configuração inicial e mantendo uma estrutura consistente entre projetos.

## Padrões adotados

- PostgreSQL como banco padrão
- Sessões armazenadas em arquivo
- Cache em arquivo
- Queue configurada como sync
- Docker obrigatório para desenvolvimento

## Observações

Após clonar o projeto não é necessário criar o arquivo `.env` manualmente. O comando `make install` realiza toda a configuração inicial automaticamente.