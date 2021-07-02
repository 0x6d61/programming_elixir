fizzbuzz_run = fn n ->
  defmodule Func do
    def func(s, n) do
      fizzbuzz = fn
        0, 0, _ -> "FizzBuzz"
        0, _, _ -> "Fizz"
        _, 0, _ -> "Buzz"
        _, _, c -> c
      end

      if s == n do
        IO.puts fizzbuzz.(rem(s, 3), rem(s, 5), s)
      else
        IO.puts fizzbuzz.(rem(s, 3), rem(s, 5), s)
        Func.func(s + 1, n)
      end
    end
  end

  Func.func(0, n)
end

fizzbuzz_run.(100)
