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
docker-compose exec app mix ecto.migrate
```

4. Execute o *seeder*

```sh
docker-compose exec app  mix run priv/repo/seeds.exs
```

### Execução

1. Após o ambiente configurado, inicie o servidor em `localhost:4000`

```sh
docker-compose exec app mix phx.server
```
