defmodule CheapDate.Reduce do
  def choose_wine(wines) do
    cond do
      Enum.empty?(wines) ->
        nil

      length(wines) == 1 ->
        List.first(wines)

      true ->
        wines
        |> Enum.reduce({%{price: nil}, %{price: nil}}, fn
          # Note: we rely on the fact that in Elixir nil compares as > any integer
          wine, {cheapest, _second} when wine.price < cheapest.price -> {wine, cheapest}
          wine, {cheapest, second} when wine.price < second.price -> {cheapest, wine}
          _wine, acc -> acc
        end)
        |> elem(1)
    end
  end
end
