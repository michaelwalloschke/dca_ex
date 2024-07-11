defmodule User do
  @moduledoc """
  Documentation for `User`.
  """
  @moduledoc since: "0.1.0"

  @enforce_keys [:name]
  defstruct [:name, :hash, :email, :disabled, :display_name, :created_at, :last_login_at]
end
