defmodule Matrice.LayoutView do
  use Matrice.Web, :view

  def class_for_module(module) do
    to_string(module) |> String.downcase |> String.split(".") |> List.last
  end
end
