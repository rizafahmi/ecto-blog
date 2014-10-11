defmodule EctoBlog.Blogs do
  use Ecto.Model

  schema "blogs" do
    field :title, :string
    field :body, :string

  end
end
