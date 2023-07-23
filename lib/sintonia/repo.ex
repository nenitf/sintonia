defmodule Sintonia.Repo do
  use Ecto.Repo,
    otp_app: :sintonia,
    adapter: Ecto.Adapters.Postgres
end
