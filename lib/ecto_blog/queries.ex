defmodule EctoBlog.Queries do
  import Ecto.Query

  def blogs do
    query = from blog in EctoBlog.Blogs,
              select: blog
    EctoBlog.Repo.all(query)
  end

  def comments do
    query = from comment in EctoBlog.Comments,
              select: comment
    EctoBlog.Repo.all(query)
  end
end
