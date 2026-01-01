import Config

# Load .env file in development
if File.exists?(".env") do
  DotenvParser.load_file(".env")
end

# Configure your database
config :elixir_api, ElixirApi.Repo,
  username: System.get_env("DB_USER", "postgres"),
  password: System.get_env("DB_PASSWORD", "postgres"),
  hostname: System.get_env("DB_HOST", "localhost"),
  database: System.get_env("DB_NAME", "elixir_api_dev"),
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# For development, we disable any cache and enable
# debugging and code reloading.
config :elixir_api, ElixirApiWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  http: [ip: {127, 0, 0, 1}, port: String.to_integer(System.get_env("PORT", "4000"))],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: System.get_env("SECRET_KEY_BASE", "dev_secret_key_base_change_in_production"),
  watchers: []

# Enable dev routes for dashboard and mailbox
config :elixir_api, dev_routes: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher log level
config :logger, level: :debug

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime
