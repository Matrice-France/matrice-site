defmodule Matrice.PageController do
  use Matrice.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
