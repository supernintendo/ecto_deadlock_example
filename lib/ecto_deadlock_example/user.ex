defmodule EctoDeadlockExample.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  @default_preloads [
    posts: from(p in EctoDeadlockExample.Post, order_by: [asc: p.id])
  ]

  schema "users" do
    field :name, :string
    field :role, :string
    has_many :posts, EctoDeadlockExample.Post

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :role])
    |> validate_required([:name, :role])
  end
end
