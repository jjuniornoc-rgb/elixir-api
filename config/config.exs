# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :elixir_api, ElixirApiWeb.Endpoint,
  url: [host: System.get_env("HOST", "localhost")],
  secret_key_base: System.get_env("SECRET_KEY_BASE", "YOUR_SECRET_KEY_BASE_HERE"),
  render_errors: [
    formats: [json: ElixirApiWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ElixirApi.PubSub,
  live_view: [signing_salt: System.get_env("LIVE_VIEW_SIGNING_SALT", "YOUR_SIGNING_SALT")]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"

