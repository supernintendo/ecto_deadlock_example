# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ecto_deadlock_example,
  ecto_repos: [EctoDeadlockExample.Repo]

# Configures the endpoint
config :ecto_deadlock_example, EctoDeadlockExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FZc2i1GQ0oWVOfvZdsgY7QwKBsxIoF0+wckWYJ0MPr3ftmu74gCj7w6fWRA/e09t",
  render_errors: [view: EctoDeadlockExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EctoDeadlockExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
