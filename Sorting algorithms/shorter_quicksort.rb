# frozen_string_literal: true

def quicksort(array)
  return [] if array.empty?

  pivot = array.delete_at(array.size / 2)
  left, right = array.partition { |o| o < pivot }
  [quicksort(left), pivot, quicksort(right)].flatten
end

p quicksort([4, 5, 3, 9, 1])
# => [1, 3, 4, 5, 9]

p quicksort([2, 10, 3, 7, 9, 4, 6, 12, 8])
# [2, 3, 4, 6, 7, 8, 9, 10, 12]

p quicksort([45, 25, 46, 48, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 49])
# [4, 5, 6, 7, 11, 13, 15, 24, 25, 28, 30, 31, 34, 36, 38, 44, 45, 46, 48, 49]

