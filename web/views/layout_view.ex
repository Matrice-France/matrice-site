defmodule Matrice.LayoutView do
  use Matrice.Web, :view

  def class_for_module(module, view) do
    controller = to_string(module) |> String.downcase |> String.split(".") |> List.last |> String.replace("view", "")
    action = to_string(view) |> String.downcase |> String.split(".") |> List.first
    controller <> " " <> action
  end
end
