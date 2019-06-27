defmodule MersenneTwisterTest do
  use ExUnit.Case
  doctest MersenneTwister

  test "Generates numbers" do
    file = File.open!("Uniform.txt",[:write])
    MersenneTwister.init(42) 
    |> Stream.take(10_000) 
    |> Enum.each(&IO.puts(file,&1))
    File.close(file)
  end

  defp writeNextNormal(i,rng,file) do
    {val,rng} = MersenneTwister.nextNormal(rng)
    IO.puts(file,val)
    cond do 
      i > 1 -> writeNextNormal(i-1,rng,file)
      true -> "All Done"
    end
  end

  test "Generate normal" do
    file = File.open!("Normal.txt",[:write])
    rng = MersenneTwister.init(42)
    writeNextNormal(1_000,rng,file)
    File.close(file)
  end

end
