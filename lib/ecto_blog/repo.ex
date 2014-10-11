defmodule EctoBlog.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://postgresuser:password@localhost/ecto_blog"
  end

  def priv do
    app_dir(:ecto_blog, "priv/repo")
  end
end
