<h1 align="center">
  <img alt="GymManager" title="GymManager" src=".\public\assets\img\gym-manager-readme-logo.png" />
</h1>

<p align="center">
  <a href="#sobre">Sobre</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#funcionalidades">Funcionalidades</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#instalação-e-uso">Instalação e Uso</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#screenshots">Screenshots</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#licença">Licença</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/made%20by-TED%20MARTINS-ffbb00?style=flat-square">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/tedmartins/gym-manager?color=ffbb00&style=flat-square">
  <img alt="GitHub Top Language" src="https://img.shields.io/github/languages/top/tedmartins/gym-manager?color=ffbb00&style=flat-square">
  <img alt="License" src="https://img.shields.io/badge/license-MIT-ffbb00?style=flat-square">
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/tedmartins/gym-manager?color=ffbb00&style=flat-square">
</p>

<br>

## Sobre

Gym Manager é um CRUD que permite o controle de membros e instrutores de uma acadêmia. 

<br>

## Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

- HTML
- CSS
- JavaScript
- NodeJS
- NunJucks
- Express
- PostgreSQL

<br>

## Funcionalidades

- Criar, visualizar, editar e apagar instrutores e membros.
- Filtrar instrutores e membros.
- Paginação.
- Páginas dinâmicas com Nunjucks.
- Banco de dados PostgreSQL.

<br>

## Instalação e Uso

Instale o NodeJS e o PostgreSQL:

NodeJS

```
https://nodejs.org/pt-br/download/
```

PostgreSQL 

```
https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
```

Agora clone este projeto:

```
$ git clone https://github.com/TedMartins/gym-manager.git
```

Aponte para a pasta do projeto e comece a instalar as dependências:

- 1 - NodeJS (^14.15.5)

```
$ npm install
```

- 2 - Express (^4.17.1)

```
$ npm install express
```

- 3 - Method-Overrride (^3.0.0)

```
$ npm install method-override
```

- 4 - Nunjucks (^3.2.3)

```
$ npm install nunjucks
```

- 5 - PostgreSQL (^12)

```
$ npm install pg
```
- 6 - O app está pronto para rodar:

```
$ npm start
```

> *Opcional:*

- Na pasta sql você encontrará o arquivo ```gymmanager.sql```, que possuí uma base de dados fictícia para testar o app, para importar este banco de dados, execute:

```
psql -U postgres -d gymmanager <sql/gymmanager.sql
```
Se preferir, pode importar manualmente o banco de dados via postbird ou pgAdmin.

<br>

## Screenshots

<br>

<p align="center">
  <img alt="GymManager Index" title="ss_instructors_index.png" src=".\public\assets\img\screenshots\ss_instructors_index.png" />
</p>

<br>

<p align="center">
  <img alt="GymManager Instructors Show" title="ss_instructors_show.png" src=".\public\assets\img\screenshots\ss_instructors_show.png" />
</p>

<br>

<p align="center">
  <img alt="GymManager Search" title="ss_instructors_search.png" src=".\public\assets\img\screenshots\ss_instructors_search.png" />
</p>

<br>

<p align="center">
  <img alt="GymManager Members Edit" title="ss_members_edit.png" src=".\public\assets\img\screenshots\ss_members_edit.png" />
</p>

<br>

<p align="center">
  <img alt="GymManager Members Show" title="ss_members_show.png" src=".\public\assets\img\screenshots\ss_members_show.png" />
</p>

<br>

## Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](.github/LICENSE.md) para mais detalhes.

> Todos os nomes utilizados no banco de dados são fictícios e não remetem a realidade. Todas as imagens foram retiradas do site [Unsplash](https://unsplash.com).