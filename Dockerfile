FROM elixir:1.14.0-alpine

RUN apk add --no-cache build-base

# instalando o gerenciar de pacotes do elixir
RUN mix local.hex --force && \
    mix local.rebar --force
