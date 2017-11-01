defmodule XTest do
  use ExUnit.Case
  doctest X

  test "draw" do
    assert X.draw(1) == "X\n"
    assert X.draw(2) == "XX\nXX\n"
    assert X.draw(3) == "X X\n X \nX X\n"
    assert X.draw(4) == "X  X\n XX \n XX \nX  X\n"
    assert X.draw(5) == "X   X\n X X \n  X  \n X X \nX   X\n"
    assert X.draw(6) == "X    X\n X  X \n  XX  \n  XX  \n X  X \nX    X\n"
  end
end
