defmodule JaSerializerLinks.Repo do
  use Ecto.Repo,
    otp_app: :ja_serializer_links,
    adapter: Ecto.Adapters.Postgres
end
