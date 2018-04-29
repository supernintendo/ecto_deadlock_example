defmodule EctoDeadlockExample.UserTest do
  use EctoDeadlockExample.ModelCase

  alias EctoDeadlockExample.User

  @valid_attrs %{name: "some name", role: "some role"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
