# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ja_serializer_links,
  ecto_repos: [JaSerializerLinks.Repo]

# Configures the endpoint
config :ja_serializer_links, JaSerializerLinksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kex/2OWTXQDCizRILTf04c6yd9KDSk+eJvq9sGGOjWLh3egQfEIZ76oG1rpH8o3d",
  render_errors: [view: JaSerializerLinksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JaSerializerLinks.PubSub, adapter: Phoenix.PubSub.PG2]

config :ja_serializer,
  key_format: :camel_cased,
  page_base_url: "https://example.com"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :phoenix, :format_encoders,
  "json-api": Jason

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}