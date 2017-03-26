defmodule Matrice.Router do
  use Matrice.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Matrice do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/philosophie", PageController, :philosophie
    get "/pedagogie", PageController, :pedagogie
    get "/processus", PageController, :processus
    get "/en-action", PageController, :en_action
    get "/ecosystème", PageController, :ecosysteme
    get "/en-1-clic", PageController, :en_1_clic
  end

  # Other scopes may use custom stacks.
  # scope "/api", Matrice do
  #   pipe_through :api
  # end
end
