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
    scope "/en-action" do
      get "/", PageController, :en_action
      get "/autisme", PageController, :en_action_autisme
      get "/art", PageController, :en_action_art
      get "/cpa", PageController, :en_action_cpa
      get "/si", PageController, :en_action_si
    end
    get "/matrice-et-vous", PageController, :matrice_et_vous
    get "/en-1-clic", PageController, :en_1_clic
  end

  # Other scopes may use custom stacks.
  # scope "/api", Matrice do
  #   pipe_through :api
  # end
end
