# frozen_string_literal: true

def smallest_difference(array)
  # write your code here
  pair= []  
  p array.sort!

  i = 0
  j = 1
  sub = (array[0]) - (array[1])
  array[0] > array[1] ? pair.push(array[1], array[0]) : pair.push(array[0], array[1])

  until array.length == 2
    sub2 = (array[i]) - (array[j])
    if sub2 > sub
      sub = sub2
      sub2 = 0
      pair = []
      array[i] > array[j] ? pair.push(array[j], array[i]) : pair.push(array[i], array[j])
    end
    array.shift
  end
  pair
end

p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]

# MODEL SOLUTION
# def smallest_difference(array)
#   # write your code here
#   numbers = [array[0], array[1]]
#   min_dif = (array[0] - array[1]).abs
  
#   array.each_with_index do |n1, i|
#     array[(i + 1)..-1].each do |n2|
#       diff = (n1 - n2).abs
      
#       if min_dif > diff
#         numbers = [n1, n2]
#         min_dif = diff
#       end
#     end
#   end
  
#   [numbers.min, numbers.max]
# end

