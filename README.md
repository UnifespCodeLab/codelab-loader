# codelab-loader

Repositório que centraliza os containers de cada aplicação

## Fluxo

### 1 - Clone o repositório

- Dentro da pasta raiz do `codelab-loader` execute: `git clone https://github.com/UnifespCodeLab/emtu-web.git`

### 2 - Configurando pasta

- Entre na pasta do projeto e crie um arquivo `.env` e adicione as variáveis de ambiente necessárias (este passo é obrigatório)
- Ex:

```bash
  cd emtu-web
  touch .env
```

- No arquivo `.env` cole:

```
PORT=3000
```

### 3 - Executando

- Na raiz do projeto execute os comandos:

```bash
docker compose up nome_do_service
```

- Lembrando que o nome do service em geral será igual ao nome da pasta baixada
- Ex: `docker compose up emtu-web`

### 4 - Comandos opcionais

- Caso queira é possivel buildar o containar com:

```bash
docker compose build nome_do_service
```

- Subir o container sem os comandos de execução:

```bash
docker compose run nome_do_service bash
```

- Acessar um container que ja está up:

```bash
docker compose exec nome_do_service bash
```
