# DEVLOG

## Criando projeto

```sh
docker run -v $(pwd):/var/opt -w /var/opt -it --rm elixir bash
```

```sh
mix archive.install hex phx_new
mix phx.new sintonia
exit
```

```sh
cd sintonia
sudo chown -R 1000:1000 .*
```

## Comandos

### Docker

```sh
docker-compose up -d

docker-compose exec app sh
```

Caso queira mudar dados do banco precisa dropar o volume

1. Mantenha o ambiente em execução
2. `docker ps`
3. Pare o ambiente `docker-compose down`
4. Delete o container `docker rm <id>`
5. `docker volume ls`
6. Delete o volume `docker volume rm <id>`
7. `docker compose up --build --force-recreate`

### Elixir

```sh
mix deps.get # baixa deps
mix ecto.drop # destrói o banco de dados
mix ecto.setup # cria o banco de dados e executa o arquivo seeds
mix ecto.create
mix ecto.migrate # migrate
mix phx.server # sobe o servidor
```
