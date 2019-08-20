def advanced_quicksort(array)
  partition(array, 0, array.size - 1)
end


def partition(array, init, fin )
  return array if init >= fin
  temp = init
  pivot = array[fin]
  init.upto(fin) do |index|
    if array[index] <= pivot
      array[index], array[temp] = array[temp], array[index]
      temp += 1
    end
  end
  temp -= 1
  puts array.join(" ")
  partition(array, init, temp - 1)
  partition(array, temp+1, fin)
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9