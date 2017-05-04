defmodule Matrice.Endpoint do
  use Phoenix.Endpoint, otp_app: :matrice

  socket "/socket", Matrice.UserSocket

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/", from: :matrice, gzip: false,
    only: ~w(css fonts images js json favicon.ico robots.txt sitemap.xml sitemap.xml.gz urllist.txt apple-touch-icon.png favicon-32x32.png favicon-16x16.png android-chrome-512x512.png android-chrome-192x192.png manifest.json humans.txt safari-pinned-tab.svg)

  # On cache les pdfs
  plug Plug.Static,
    at: "/documents", from: :matrice, gzip: false,
    only: ~w(dossier-presse.pdf communique-presse.pdf programme.pdf invitation23052017.pdf)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug Plug.Session,
    store: :cookie,
    key: "_matrice_key",
    signing_salt: "fiT3FEYc"

  plug Matrice.Router
end
