defmodule JaSerializerLinksWeb.PageController do
  use JaSerializerLinksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
