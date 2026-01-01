import Config

# Configure your database
config :elixir_api, ElixirApi.Repo,
  username: System.get_env("DB_USER"),
  password: System.get_env("DB_PASSWORD"),
  hostname: System.get_env("DB_HOST"),
  database: System.get_env("DB_NAME"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE", "10")),
  ssl: System.get_env("DB_SSL", "false") == "true"

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

