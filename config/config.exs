# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :batch_insert_workshop,
  ecto_repos: [BatchInsertWorkshop.Repo]

# Configures the endpoint
config :batch_insert_workshop, BatchInsertWorkshopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FkfQAuR85HYu10YB1dPZkyL0f3aJS92y1spsSau+1A/4cGyGR1m/seAlJqY/SVNS",
  render_errors: [view: BatchInsertWorkshopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BatchInsertWorkshop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
