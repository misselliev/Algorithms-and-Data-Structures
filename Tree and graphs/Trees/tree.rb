def leftmost_nodes_sum(array)
  i = 1
  output = array[0] + array[1]
  ctr = true

  while ctr
    i = 2 * i + 1
    ctr = false if i > array.size
    output += array[i] if i < array.size
  end
  output
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11
