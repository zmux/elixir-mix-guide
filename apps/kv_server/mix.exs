defmodule KVServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :kv_server,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {KVServer.Application, []}
    ]
  end

  defp deps do
    [
      {:kv, in_umbrella: true}
    ]
  end
end
