# frozen_string_literal: true

def find_pairs(array, k)
  result = []
  array.each do |num|
    out = k - num
    result << [num, out] if !result.include?([num, out]) && !result.include?([out, num]) && array.include?(out)
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p find_pairs([1, 3, 5, 11], 14)
# [3,11]

p find_pairs([8, 17, 5, 11, 9, 6, 3, 2, 15], 21)
# [6,15]

p find_pairs([-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4], 0)
# [[-8, 8], [9, -9]]

p find_pairs([17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40)
# [[21, 19], [-11, 51]]

# MODEL SOLUTION
# def find_pairs(array, k)
#   # write your code here
#   pairs = []
#   array.each_with_index do |x, index|
#     array[(index + 1)..-1].each do |y|
#       pairs.push([x, y]) if x + y == k
#     end
#   end
#   pairs
# end
