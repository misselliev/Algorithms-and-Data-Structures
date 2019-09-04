def simple_quicksort(array)
  sorting array
end

def sorting(array)
  i = 0
  temp = ['']
  a, b = [], []

  pivot = array.first

  return pivot if array.size < 2

  array[1..-1].each do |item|
    if item < pivot
      temp.unshift(item)
      i += 1
    else
      temp << item
    end
  end

  temp[i] = pivot

  a << sorting(temp[0...i].reverse)
  b << sorting(temp[(i + 1)..-1])

  merge(a + [pivot] + b)
end

def merge(array)
  puts array.flatten.compact.join(' ') if array.size > 1
  array.flatten.compact if array.size > 1
  counter +=1
end
p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10
p simple_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
# 1 2
# 4 5
# 1 2 3 4 5
# 1 2 3 4 5 6 7
# 1 2 3 4 5 6 7 8
# 1 2 3 4 5 6 7 8 9