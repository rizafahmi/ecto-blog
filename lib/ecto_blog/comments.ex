defmodule EctoBlog.Comments do
  use Ecto.Model

  schema "comments" do
    field :email, :string
    field :text, :string

    belongs_to :blogs, EctoBlog.Blogs

  end
end
