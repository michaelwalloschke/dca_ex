defmodule SmtpTest do
  @moduledoc """
  Smtp test
  """

  use ExUnit.Case
  doctest Smtp

  test "greets the world" do
    assert Smtp.hello() == :world
  end
end
