import Config

# Load .env file if it exists (only in dev and test)
if Mix.env() in [:dev, :test] do
  if File.exists?(".env") do
    DotenvParser.load_file(".env")
  end
end

# Runtime configuration can be added here if needed
# This file is executed at runtime for every environment
