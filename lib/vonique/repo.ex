defmodule Vonique.Repo do
  use Ecto.Repo,
    otp_app: :vonique,
    adapter: Ecto.Adapters.Postgres
end
