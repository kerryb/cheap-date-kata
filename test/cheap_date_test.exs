defmodule CheapDateTest do
  use ExUnit.Case

  for module <- [CheapDate.Cond, CheapDate.Ugly, CheapDate.Recursive, CheapDate.PatternMatching] do
    @module module
    describe "#{@module}.choose_wine/1" do
      test "returns nil if there's no wine" do
        assert is_nil(@module.choose_wine([]))
      end

      test "returns the wine if there's only one" do
        assert @module.choose_wine([%{name: "House plonk", price: 5.99}]).name == "House plonk"
      end

      test "returns the dearer wine if there are two" do
        assert @module.choose_wine([
                 %{name: "House plonk", price: 5.99},
                 %{name: "Chateux Polwars", price: 10.95}
               ]).name == "Chateux Polwars"
      end

      test "returns the second-cheapest wine if there are more than two" do
        assert @module.choose_wine([
                 %{name: "More money than sense", price: 50.00},
                 %{name: "House plonk", price: 5.99},
                 %{name: "Chateux Polwars", price: 10.95}
               ]).name == "Chateux Polwars"
      end
    end
  end
end
