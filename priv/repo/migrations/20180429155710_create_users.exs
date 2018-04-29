defmodule EctoDeadlockExample.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false, default: ""
      add :role, :string, null: false, default: ""

      timestamps()
    end
  end
end
