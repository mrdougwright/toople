defmodule ToopleTest do
  use ExUnit.Case
  doctest Toople

  test "greets the world" do
    assert Toople.hello() == :world
  end
end
