defmodule Matrice.PageController do
  use Matrice.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def philosophie(conn, _params) do
    render conn, "philosophie.html"
  end

  def pedagogie(conn, _params) do
    render conn, "pedagogie.html"
  end

  def processus(conn, _params) do
    render conn, "processus.html"
  end

  def en_action(conn, _params) do
    en_action_autisme(conn, _params)
  end

  def en_action_autisme(conn, _params) do
    render conn, "en_action_autisme.html"
  end

  def en_action_art(conn, _params) do
    render conn, "en_action_art.html"
  end

  def en_action_cpa(conn, _params) do
    render conn, "en_action_cpa.html"
  end

  def en_action_si(conn, _params) do
    render conn, "en_action_si.html"
  end

  def matrice_et_vous(conn, _params) do
    render conn, "matrice_et_vous.html"
  end

  def en_un_clic(conn, _params) do
    render conn, "en_un_clic.html"
  end
end
