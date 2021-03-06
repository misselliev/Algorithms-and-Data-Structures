# frozen_string_literal: true

def partition(array)
  model = array[0]
  right = []
  left = []
  (1..array.length - 1).each do |i|
    array[i] > model ? right << array[i] : left << array[i]
  end
  right.unshift(model).unshift(left).flatten!
end

# MODEL SOLUTION
# def partition(array)
#   # write your code here
#   pivot = array.first
#   smaller = []
#   greater = []

#   array[1..-1].each do |number|
#     if number > pivot
#       greater << number
#     else
#       smaller << number
#     end
#   end

#   smaller + [pivot] + greater
# end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]

p partition([2, 10, 3, 7, 9, 4, 6, 12, 8])
# [2, 10, 3, 7, 9, 4, 6, 12, 8]

p partition([45, 25, 46, 48, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 49])
# [25, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 45, 46, 48, 49]
