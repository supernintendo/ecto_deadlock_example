defmodule EctoDeadlockExample.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :text, null: false, default: ""
      add :slug, :string, null: false, default: ""
      add :user_id, :references(:users)

      timestamps()
    end
    create index(:posts, [:user_id])
  end
end
