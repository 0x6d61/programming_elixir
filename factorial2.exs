defmodule Factorial2 do
  def of(0), do: 1

  def of(n) when is_number(n) and n > 0 do
    n * of(n - 1)
  end
end


IO.puts Factorial2.of(100)