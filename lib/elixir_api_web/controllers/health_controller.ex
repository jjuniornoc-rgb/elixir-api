defmodule ElixirApiWeb.HealthController do
  use ElixirApiWeb, :controller

  def check(conn, _params) do
    json(conn, %{
      status: "ok",
      message: "API is running",
      timestamp: DateTime.utc_now() |> DateTime.to_iso8601()
    })
  end
end

