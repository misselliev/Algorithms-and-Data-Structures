def staircase(n)
  1.upto(n) do |i|
    puts " " *(n - i) + "#" * i
  end
end

p staircase(4)
