# Sintonia

## Desenvolvimento

### Ambiente

1. Inicie o ambiente

```sh
docker-compose up -d
```

> `docker-compose down` para encerrar

2. Baixe as dependências

```sh
docker-compose exec app mix deps.get
```

3. Execute as *migrations*

```sh
mix ecto.migrate
```

### Execução

1. Após o ambiente configurado, inicie o servidor em `localhost:4000`

```sh
docker-compose exec app mix phx.server
```
