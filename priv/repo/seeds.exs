# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     JaSerializerLinks.Repo.insert!(%JaSerializerLinks.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias JaSerializerLinks.Repo
alias JaSerializerLinks.Blog.Post
alias JaSerializerLinks.Blog.Comment

post = Repo.insert!(%Post{
  title: "The Title",
  body: "Body"
})

Repo.insert!(%Comment{
  post_id: post.id,
  body: "A comment"
})