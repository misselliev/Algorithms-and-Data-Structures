# frozen_string_literal: true

def insertion_sort(array)
  (array.size - 1).downto(0) do |i|

    next unless array[i] < array[i - 1]

    temp = array[i]
    array[i] = array[i - 1]
    puts array.join(' ')
    array[i - 1] = temp

  end
  puts array.join(' ')
end

# def insertion_sort(array)
#   (array.length-1).downto(0) do |i|

#     while i > 1 && array[i] < array[i - 1]
#       temp = array[i]
#       array[i] = array[i - 1]
#       p array.join('')
#       array[i - 1] = temp
#     end
#   end
#   p array.join('')
# end


insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
