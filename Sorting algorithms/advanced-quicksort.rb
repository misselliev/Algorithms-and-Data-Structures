def advanced_quicksort(array)
  partition(array, 0, array.size - 1)

end


def partition(array, lower_bound, upper_bound)
  return if upper_bound <= lower_bound
  pivot = array[upper_bound]
  i, j = lower_bound - 1, upper_bound

  loop do
    loop do
      i += 1
      break if pivot <= array[i]
    end
    loop do
      j -= 1
      break if j <= lower_bound || array[j] <= pivot
    end
    array[i], array[j] = array[j], array[i]
    break if j <= i
  end
  array[j], array[i], array[upper_bound] = array[i], pivot, array[j]
  puts array.join(' ')

  partition(array, lower_bound, i - 1)
  partition(array, i + 1, upper_bound)
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9