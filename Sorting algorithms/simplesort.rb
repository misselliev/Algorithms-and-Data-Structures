# frozen_string_literal: true


def simple_quicksort(array)
  model = array.size / 2
  right = []
  left = []
  (1..array.length - 1).each do |i|
    array[i] > model ? right << array[i] : left << array[i]
  end

  # Sorting left side
  if left.first == 1
    temp_left = left.first
    left.shift
  end
  p left if left == left.sort
  left[0], left[1] = left[1], left[0] if left.size < 3
  p left
  p left.unshift(temp_left) if left== left.sort

  # Sorting right side
  right_value = right.first
  right_index = right.size / 2
  temp_value = right[right_index]
  right[right_index] = right_value
  right[right_index - 1] = temp_value
  p right if right == right.sort


  # Printing result
  right.unshift(left).flatten!
end

# def is_sorted?(array)
#   p self if self == self.sort
# end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
