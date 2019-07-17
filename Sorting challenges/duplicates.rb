# frozen_string_literal: true
def duplicates(arr1, arr2)
  data = arr1 + arr2
  result = []
  counts = Hash.new(0)
  data.each do |item|
    counts[item] += 1
  end
  counts.each do |key, value|
    result.push(key) if value>=3 && value.odd?
  end
  return result.sort!
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206],
             [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]

p duplicates([10, 3, 17, 11, 5, 10, 3, 9, 11, 33, 41, 22, 8, 17, 3, 11, 35, 52, 73, 88], [22, 3, 10, 11, 33, 41, 11, 5, 3, 17, 10, 3, 9, 11, 52, 73, 88, 35, 10, 11, 3, 8, 17, 8])
# [3, 8, 10, 11]
