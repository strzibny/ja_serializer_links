use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ja_serializer_links, JaSerializerLinksWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ja_serializer_links, JaSerializerLinks.Repo,
  username: "postgres",
  password: "postgres",
  database: "ja_serializer_links_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
