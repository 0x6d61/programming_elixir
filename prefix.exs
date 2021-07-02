prefix = fn str ->
  fn str2 -> "#{str} #{str2}" end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")