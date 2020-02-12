defmodule HeroTest do
  use ExUnit.Case

  import Tetrisish.Hero

  test "creates new hero" do
    assert new_hero().name == :o
  end

  test "should manipulate hero location" do
    actual = 
      new_hero()
      |> left
      |> down
      |> down
      |> right

    assert actual.location == {40,2}
  end

  defp new_hero, do: new()

end