defmodule User do
  @moduledoc """
  User struct `User`

  Fields:
  - `name` - The user's name.
  - `token` - The user's token (used internally).
  - `hash` - The user's password hash.
  - `email` - The user's email address.
  - `disabled` - Whether the user is disabled.
  - `display_name` - The user's display name.
  - `created_at` - The user's creation date.
  - `last_login_at` - The user's last login date.
  """
  @moduledoc since: "0.1.0"

  @enforce_keys :name
  defstruct [:name, :token, :hash, :email, :disabled, :display_name, :created_at, :last_login_at]
end
