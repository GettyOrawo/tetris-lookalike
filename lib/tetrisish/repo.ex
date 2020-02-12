defmodule Tetrisish.Repo do
  use Ecto.Repo,
    otp_app: :tetrisish,
    adapter: Ecto.Adapters.Postgres
end
