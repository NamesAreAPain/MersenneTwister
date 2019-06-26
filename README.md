# MersenneTwister

Simple module for generating seeded streams of random numbers on the range \[0,1\). Just call MersenneTwister.init\0 for a stream
based on the current millisecond time, MersenneTwister.init\1 for a stream seeded with the given value, or go off the rails and use custom presets using MersenneTwister.init\2. 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `mersennetwister` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:mersennetwister, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/mersennetwister](https://hexdocs.pm/mersennetwister).

