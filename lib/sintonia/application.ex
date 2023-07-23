defmodule Sintonia.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SintoniaWeb.Telemetry,
      # Start the Ecto repository
      Sintonia.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Sintonia.PubSub},
      # Start Finch
      {Finch, name: Sintonia.Finch},
      # Start the Endpoint (http/https)
      SintoniaWeb.Endpoint
      # Start a worker by calling: Sintonia.Worker.start_link(arg)
      # {Sintonia.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Sintonia.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SintoniaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
