defmodule JaSerializerLinksWeb.CommentView do
  use JaSerializerLinksWeb, :view
  alias JaSerializerLinksWeb.CommentView

  def render("index.json", %{comments: comments}) do
    %{data: render_many(comments, CommentView, "comment.json")}
  end

  def render("show.json", %{comment: comment}) do
    %{data: render_one(comment, CommentView, "comment.json")}
  end

  def render("comment.json", %{comment: comment}) do
    %{id: comment.id,
      post_id: comment.post_id,
      body: comment.body}
  end
end
