defmodule IntegerToIp.Mixfile do
  use Mix.Project

  def project do
    [app: :integer_to_ip,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
        {:earmark, "~> 1.0"},
        {:ex_doc, "~> 0.14.5"}
    ]
  end

  defp description do
    """
    Integer to ip (and the opposite) for Elixir. This module helps you to get an ip into a integer (and the opposite)
    """
  end

  defp package do
      [
          name: :integer_to_ip,
          files: ["lib","mix.exs"],
          maintainers: ["Jérémie Payet (jpcweb)"],
          licences: ["MIT"],
          links: %{"Github" => "https://github.com/jpcweb"}
      ]
    end
end
