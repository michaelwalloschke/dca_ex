defmodule UserTest do
  @moduledoc """
  User test
  """
  use ExUnit.Case

  doctest User

  @doc """
  Tests creating a `User` struct with both `name` and `email` fields set.
  """
  test "creates a user struct with name and email" do
    user = %User{name: "John Doe", email: "john@example.com"}
    assert user.name == "John Doe"
    assert user.email == "john@example.com"
  end

  @doc """
  Tests creating a `User` struct with only the `name` field set.
  """
  test "creates a user struct with only name" do
    user = %User{name: "Jane Smith"}
    assert user.name == "Jane Smith"
  end
end
