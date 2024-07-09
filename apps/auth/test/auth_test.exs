defmodule AuthTest do
  @moduledoc """
  Auth test
  """
  use ExUnit.Case
  doctest Auth

  test "greets the world" do
    assert Auth.hello() == :world
  end
end
