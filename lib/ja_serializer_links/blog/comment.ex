defmodule JaSerializerLinks.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :body, :string
    field :post_id, :integer

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:post_id, :body])
    |> validate_required([:post_id, :body])
  end
end
