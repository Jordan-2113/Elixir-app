defmodule Vonique.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      VoniqueWeb.Telemetry,
      # Start the Ecto repository
      Vonique.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Vonique.PubSub},
      # Start Finch
      {Finch, name: Vonique.Finch},
      # Start the Endpoint (http/https)
      VoniqueWeb.Endpoint
      # Start a worker by calling: Vonique.Worker.start_link(arg)
      # {Vonique.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Vonique.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    VoniqueWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
