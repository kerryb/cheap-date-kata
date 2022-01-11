defmodule CheapDate do
  def choose_wine(wines) do
    if Enum.empty?(wines) do
      nil
    else
      if length(wines) == 1 do
        List.first(wines)
      else
        wines |> Enum.sort_by(& &1.price) |> Enum.at(1)
      end
    end
  end
end
