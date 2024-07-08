defmodule SmtpTest do
  use ExUnit.Case
  doctest Smtp

  test "greets the world" do
    assert Smtp.hello() == :world
  end
end
