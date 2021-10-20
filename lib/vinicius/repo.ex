defmodule Vinicius.Repo do
  use Ecto.Repo,
    otp_app: :vinicius,
    adapter: Ecto.Adapters.Postgres
end
