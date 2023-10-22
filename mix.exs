defmodule MemGPT.MixProject do
  use Mix.Project

  def project do
    [
      app: :mem_gpt,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      docs: [
        main: "MemGPT",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:doctor, "~> 0.21", only: :dev, runtime: false},
      {:ex_check, "~> 0.15", only: :dev, runtime: false},
      {:ex_doc, "~> 0.30", only: [:dev, :test], runtime: false},
      {:faker, "0.17.0", only: :test},
      {:finch, "~> 0.13"},
      {:jason, "~> 1.2"},
      {:knigge, "~> 1.4"},
      {:mix_audit, "~> 2.1", only: :dev, runtime: false},
      {:mix_test_interactive, "~> 1.2", only: :dev, runtime: false},
      {:mox, "~> 1.1", only: :test},
      {:openai, "~> 0.5"},
      {:sobelow, "~> 0.12", only: [:dev, :test], runtime: false},
      {:stream_data, "~> 0.6"},
      {:typed_struct, "~> 0.3"},
      {:uuid, "~> 1.1"},
      {:vex, "~> 0.9"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      compile: ["compile --warnings-as-errors"],
      sobelow: ["sobelow --config"],
      dialyzer: ["dialyzer --list-unused-filters"],
      credo: ["credo --strict"],
      check_formatting: ["format --check-formatted"]
    ]
  end
end
