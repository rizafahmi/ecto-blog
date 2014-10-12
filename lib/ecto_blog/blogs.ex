defmodule EctoBlog.Blogs do
  use Ecto.Model

  schema "blogs" do
    field :title, :string
    field :body, :string

    has_many :comments, EctoBlog.Comments

  end
end
