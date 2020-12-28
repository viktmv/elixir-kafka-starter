defmodule ElixirKafkaStarter.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_kafka_starter,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirKafkaStarter.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.4"},
      {:jason, "~> 1.2"},
      {:kafka_ex, "~> 0.11"},
      {:snappy, git: "https://github.com/fdmanana/snappy-erlang-nif"}
    ]
  end
end
