defmodule CheapDateTest do
  use ExUnit.Case

  describe "CheapDate.choose_wine/1" do
    test "returns nil if there's no wine" do
      assert is_nil(CheapDate.choose_wine([]))
    end
  end
end
