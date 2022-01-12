defmodule CheapDate.Cond do
  def choose_wine(wines) do
    cond do
      Enum.empty?(wines) -> nil
      length(wines) == 1 -> List.first(wines)
      true -> wines |> Enum.sort_by(& &1.price) |> Enum.at(1)
    end
  end
end
