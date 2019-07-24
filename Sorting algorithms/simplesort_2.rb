# frozen_string_literal: true

def simple_quicksort(array)
  return [] if array.empty?

  pivot = array.first
  right = []
  left = []
  (1..array.length - 1).each do |i|
    array[i] > pivot ? right << array[i] : left << array[i]
  end
  # array.unshift(pivot)
  p left unless left.empty?
  p right unless right.empty?

  [simple_quicksort(left), pivot, simple_quicksort(right)].flatten
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10

# p simple_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
# -1 2
# -4 5
# -1 2 3 4 5
# -1 2 3 4 5 6 7
# -1 2 3 4 5 6 7 8
# -1 2 3 4 5 6 7 8 9