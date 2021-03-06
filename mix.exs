defmodule ProjectQueue.MixProject do
  use Mix.Project

  def project do
    [
      app: :project_queue,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ProjectQueue.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:amqp, "~> 1.0"},
      {:ranch, "~> 1.6.2", override: true},
      {:ranch_proxy_protocol, "~> 2.1.1", override: true},
      {:lager, "~> 3.6.6", override: true},
      {:elastix, "~> 0.6.0"},
      {:jason, "~> 1.1"}
    ]
  end
end
