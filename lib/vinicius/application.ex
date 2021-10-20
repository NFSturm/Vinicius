defmodule Vinicius.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Vinicius.Repo,
      # Start the Telemetry supervisor
      ViniciusWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Vinicius.PubSub},
      # Start the Endpoint (http/https)
      ViniciusWeb.Endpoint
      # Start a worker by calling: Vinicius.Worker.start_link(arg)
      # {Vinicius.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Vinicius.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ViniciusWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
