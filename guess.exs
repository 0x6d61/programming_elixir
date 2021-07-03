defmodule Chop do
  def guess(actual, range) do
    {min, avg, max} = get_min_avg_max(range)

    if actual in Tuple.to_list(get_min_avg_max(range)) do
      actual
    else
      IO.puts("It is #{avg}")

      if actual > avg do
        guess(actual, avg..max)
      else
        guess(actual, min..avg)
      end
    end
  end

  def get_min_avg_max(range) do
    list = Enum.to_list(range)
    avg = div(Enum.sum(list), length(list))
    max = Enum.max(list)
    min = Enum.min(list)
    {min, avg, max}
  end
end

IO.puts Chop.guess(273, 1..1000)
