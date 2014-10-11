defmodule EctoBlog.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def up do
    ["CREATE TABLE blogs (
        id serial primary key,
        title varchar(100),
        body text
      )",

      "CREATE TABLE comments (
        id serial primary key,
        email varchar(75),
        text text
      )"

    ]
  end

  def down do
    [
      "DROP TABLE blogs",
      "DROP TABLE comments"
    ]
  end
end
