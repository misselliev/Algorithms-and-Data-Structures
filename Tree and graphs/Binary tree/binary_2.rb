def tree_height(tree_as_list)
  step = 1
  max = 0
  ctr = 0

  if tree_as_list.empty?
    max = 0
  else
    until ctr.nil?
      ctr = tree_as_list[(step * 2) + 1]
      unless ctr.nil?
        step *= 2
        max += 1
      end
    end
  end

  max + 1
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
