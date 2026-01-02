defmodule ElixirApiWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use ElixirApiWeb, :controller

  # This clause is an example of how to handle resources that cannot be found.
  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: ElixirApiWeb.ErrorJSON, html: ElixirApiWeb.ErrorHTML)
    |> render(:error, message: "Resource not found")
  end

  def call(conn, {:error, message}) when is_binary(message) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: ElixirApiWeb.ErrorJSON, html: ElixirApiWeb.ErrorHTML)
    |> render(:error, message: message)
  end
end

