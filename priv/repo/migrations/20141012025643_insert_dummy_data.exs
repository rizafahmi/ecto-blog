defmodule EctoBlog.Repo.Migrations.InsertDummyData do
  use Ecto.Migration

  def up do
    [
      "INSERT INTO blogs ( title, body ) VALUES ( 'My First Blog Post',
      'Hello all, this is my first blog post')",
      "INSERT INTO comments ( email, text ) VALUES ( 'rizafahmi@gmail.com',
      'Good post, btw' )"
    ]
  end

  def down do
    [
      "TRUNCATE TABLE blogs",
      "TRUNCATE TABLE comments"
    ]
  end
end
