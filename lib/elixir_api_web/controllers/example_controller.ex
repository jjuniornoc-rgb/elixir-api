defmodule ElixirApiWeb.ExampleController do
  use ElixirApiWeb, :controller

  @moduledoc """
  Example controller showing CRUD operations pattern.
  Uncomment and adapt as needed for your entities.
  """

  # Example index action
  # def index(conn, _params) do
  #   items = YourContext.list_items()
  #   render(conn, :index, items: items)
  # end

  # Example show action
  # def show(conn, %{"id" => id}) do
  #   item = YourContext.get_item!(id)
  #   render(conn, :show, item: item)
  # end

  # Example create action
  # def create(conn, %{"item" => item_params}) do
  #   case YourContext.create_item(item_params) do
  #     {:ok, item} ->
  #       conn
  #       |> put_status(:created)
  #       |> render(:show, item: item)
  #
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(:error, changeset: changeset)
  #   end
  # end

  # Example update action
  # def update(conn, %{"id" => id, "item" => item_params}) do
  #   item = YourContext.get_item!(id)
  #
  #   case YourContext.update_item(item, item_params) do
  #     {:ok, item} ->
  #       render(conn, :show, item: item)
  #
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(:error, changeset: changeset)
  #   end
  # end

  # Example delete action
  # def delete(conn, %{"id" => id}) do
  #   item = YourContext.get_item!(id)
  #
  #   case YourContext.delete_item(item) do
  #     {:ok, _item} ->
  #       send_resp(conn, :no_content, "")
  #
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(:error, changeset: changeset)
  #   end
  # end
end

