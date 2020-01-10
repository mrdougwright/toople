defmodule Toople.MixProject do
  use Mix.Project

  def project do
    [
      app: :toople,
      version: "0.0.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
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
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mrdougwright/toople"},
      maintainers: ["Doug Wright", "et al"],
      files: ["lib", "mix.exs", "README*"]
    ]
  end
end
