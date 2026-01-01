import Config

# Configure your database
config :elixir_api, ElixirApi.Repo,
  username: System.get_env("DB_USER", "postgres"),
  password: System.get_env("DB_PASSWORD", "postgres"),
  hostname: System.get_env("DB_HOST", "localhost"),
  database: System.get_env("DB_NAME", "elixir_api_test"),
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_api, ElixirApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false

# In test we don't send emails.
config :elixir_api, :mailer, :test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

