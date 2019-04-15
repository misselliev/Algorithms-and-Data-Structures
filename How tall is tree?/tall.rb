def binary_tree_height(array_tree, i=0)
  # write your code here
  return 0 if array_tree[i].nil?
  left = binary_tree_height(array_tree, 2*i+1)
  right= binary_tree_height(array_tree, 2*i+2)
  [left, right].max + 1
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3