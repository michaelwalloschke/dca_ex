defmodule DcaEx.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        ensure_consistency: :test
      ],
      test_coverage: [tool: ExCoveralls],
      dialyzer: [plt_add_deps: :app_tree],
      deps: deps(),
      aliases: aliases(),

      # Docs
      name: "DcaEx",
      source_url: "https://github.com/Taraluktus/dca_ex"
    #   homepage_url: "http://YOUR_PROJECT_HOMEPAGE",
    # docs: [
    #   main: "MyApp", # The main page in the docs
    #   logo: "path/to/logo.png",
    #   extras: ["README.md"]
    # ]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:jason, "~> 1.4"},

      {:credo, "~> 1.7", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: :dev, runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},

      {:excoveralls, "~> 0.18", only: :test}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  #
  # Aliases listed here are available only for this project
  # and cannot be accessed from applications inside the apps/ folder.
  defp aliases do
    [
      # run `mix setup` in all child apps
      setup: ["cmd mix setup"],
      ensure_consistency: ["test", "dialyzer", "credo --strict", "coveralls"]
    ]
  end

end
