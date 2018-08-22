defmodule SpacexEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :spacex_ex,
      version: "0.1.0",
      elixir: "~> 1.7",
      source_url: "https://github.com/crunchysoul/spacex_ex",
      homepage_url: "https://github.com/crunchysoul/spacex_ex",
      docs: [extras: ["README.md"]],
      description: description(),
      package: package(),
      deps: deps()
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
      {:httpoison, "~> 1.0.0"},
      {:poison, "~> 3.1"},
      {:ex_doc, "~> 0.18.3", only: :dev},
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      maintainers: ["Joshua Chen Zhao"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/crunchysoul/spacex_ex"}
    ]
  end

  defp description do
    """
    An Elixir wrapper for the r-spacex/SpaceX-API.
    """
  end
end
