defmodule CheapDate.PatternMatching do
  def choose_wine([]), do: nil
  def choose_wine([wine]), do: wine
  def choose_wine(wines), do: wines |> Enum.sort_by(& &1.price) |> Enum.at(1)
end
