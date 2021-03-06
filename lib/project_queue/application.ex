defmodule ProjectQueue.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: ProjectQueue.Worker.start_link(arg)
      # {ProjectQueue.Worker, arg},
      {ProjectQueue.Worker, [name: :project_queue_worker]},
      {ProjectQueue.Responder, [name: :project_queue_responder]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: :project_queue_supervisor]
    Supervisor.start_link(children, opts)
  end
end
