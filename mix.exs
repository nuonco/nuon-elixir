defmodule Nuon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nuon,
      version: "0.19.205",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: """
      API for managing nuon apps, components, and installs.
      """,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.7"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev, :test], runtime: false}
    ]
  end

   defp package do
      [
        name: "nuon",
        files: ~w(.formatter.exs config lib mix.exs README* LICENSE*),
        licenses: ["MIT"],
        links: %{
            "Website" => "https://www.nuon.co/",
            "Docs" => "https://docs.nuon.co/quickstart",
            "Github" => "https://github.com/nuonco/nuon-elixir"
        }
      ]
  end
end
