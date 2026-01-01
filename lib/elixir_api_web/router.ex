defmodule ElixirApiWeb.Router do
  use ElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirApiWeb do
    pipe_through :api

    get "/health", HealthController, :check

    # Add your routes here
    # resources "/users", UserController, except: [:new, :edit]
  end

  # Enable LiveDashboard in development
  if Application.compile_env(:elixir_api, :dev_routes, false) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session]
      live_dashboard "/dashboard", metrics: ElixirApiWeb.Telemetry
    end
  end
end

