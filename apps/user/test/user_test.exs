defmodule UserTest do
  @moduledoc """
  User test
  """

  use ExUnit.Case
  doctest User

  test "greets the world" do
    assert User.hello() == :world
  end
end
