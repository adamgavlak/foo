# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :foo,
  ecto_repos: [Foo.Repo]

# Configures the endpoint
config :foo, FooWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u4HCQVQ0tHmeY2fQGguqttcBphM7VIGYEEfe9CD7GkZPZLHzJaL/354E2QwIQLs8",
  render_errors: [view: FooWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Foo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :logger, backends: [Rollbax.Logger]
config :logger, Rollbax.Logger, level: :error

config :rollbax, access_token: "8b9108d9e9d54e41a0bbfcc5de05d212"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
