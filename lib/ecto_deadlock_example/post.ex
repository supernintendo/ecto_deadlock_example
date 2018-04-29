defmodule EctoDeadlockExample.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :slug, :string

    belongs_to :user, EctoDeadlockExample.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :slug])
    |> cast_assoc(:user)
    |> validate_required([:body, :slug])
  end
end
