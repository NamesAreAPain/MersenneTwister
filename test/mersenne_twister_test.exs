defmodule MersenneTwisterTest do
  use ExUnit.Case
  doctest MersenneTwister

  test "Generates numbers" do
    MersenneTwister.init(42) 
    |> Stream.take(1000) 
    |> Enum.to_list()
    |> IO.inspect
  end
end
