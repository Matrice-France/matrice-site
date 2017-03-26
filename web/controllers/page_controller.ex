defmodule Matrice.PageController do
  use Matrice.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def pedagogie(conn, _params) do
    render conn, "pedagogie.html"
  end
end
