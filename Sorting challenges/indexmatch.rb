# frozen_string_literal: true


def index_match(array)
  match = -1
  array.each_with_index do |val, index|
    val == index ? match = index : match
  end
  return match
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
puts index_match([-25, -20, -15, -10, -5, 5, 7, 8, 9, 10, 11, 12])
# 5
puts index_match([3, 5, 7, 9, 11, 13, 17])
# -1

# MODEL SOLUTION
# def index_match(array)
#   # write your code here
#   array.each_with_index do |element, index|
#     if element == index
#       return element
#     end
#   end
  
#   -1
# end