import Config

config :elixir_api, ElixirApiWeb.Endpoint,
  http: [
    ip: {0, 0, 0, 0, 0, 0, 0, 0},
    port: String.to_integer(System.get_env("PORT", "4000"))
  ],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  server: true

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration
config :elixir_api, :gcs_bucket, System.get_env("GCS_BUCKET")
