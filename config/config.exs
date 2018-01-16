# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fire_starter,
  ecto_repos: [FireStarter.Repo]

# Configures the endpoint
config :fire_starter, FireStarterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LfUaSxmIcomNt1pGtGyCoDOW4T8JOLC/XTi4e2/Bms2hUuCzGeXouflRRWMSSAbK",
  render_errors: [view: FireStarterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FireStarter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
