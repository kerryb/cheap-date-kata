defmodule CheapDate.Recursive do
  def choose_wine([]), do: nil
  def choose_wine([wine]), do: wine
  def choose_wine(wines), do: do_choose_wine(wines, {%{price: :infinity}, %{price: :infinity}})

  defp do_choose_wine([], {_cheapest, second}), do: second

  defp do_choose_wine([head | tail], {cheapest, _second}) when head.price < cheapest.price do
    do_choose_wine(tail, {head, cheapest})
  end

  defp do_choose_wine([head | tail], {cheapest, second}) when head.price < second.price do
    do_choose_wine(tail, {cheapest, head})
  end

  defp do_choose_wine([_head | tail], {cheapest, second}) do
    do_choose_wine(tail, {cheapest, second})
  end
end
