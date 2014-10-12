defmodule EctoBlog.Repo.Migrations.AlterCommentsTable do
  use Ecto.Migration

  def up do
    ["ALTER TABLE comments
      ADD blogs_id INTEGER",
      "ALTER TABLE comments
      ADD FOREIGN KEY(blogs_id) REFERENCES blogs(id);",
     "UPDATE comments SET blogs_id=1"
    ]
  end

  def down do
    """
    ALTER TABLE comments
      DROP CONSTRAINT "comments_id_fkey",
      DROP blogs_id
    """
  end
end
