FROM elixir:1.14.0-alpine

# instalando o gerenciar de pacotes do elixir
RUN mix local.hex --force && \
    mix local.rebar --force
