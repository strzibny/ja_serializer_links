defmodule JaSerializerLinksWeb.PostView do
  use JaSerializer.PhoenixView

  location "/posts/:id"
  attributes [:title, :tags, :body, :excerpt]

  has_many :comments,
    links: [
      related: "/posts/:id/comments"
    ]
end
