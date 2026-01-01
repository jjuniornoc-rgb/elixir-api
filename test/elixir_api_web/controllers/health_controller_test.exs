defmodule ElixirApiWeb.HealthControllerTest do
  use ElixirApiWeb.ConnCase

  describe "GET /api/health" do
    test "returns ok status", %{conn: conn} do
      conn = get(conn, "/api/health")
      assert json_response(conn, 200)["status"] == "ok"
    end
  end
end

