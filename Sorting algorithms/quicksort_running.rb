def quicksort_running_time(array)
  quick_array = array[0 .. array.length]
  ins_array = array[0 .. array.length]
  # new_array = array[0 .. array.length]
  quick = QuickSort.new(quick_array)
  quick.running_time_quicksort(quick_array)
  ins= running_time_insertion(ins_array)  
  return ins - quick.swaps
  # running_time_insertion - running_time_quicksort 
end

def running_time_insertion(array)
  counter = 0
  (1..array.size - 1).each do |num|
    while (num > 0) && (array[num] < array[num - 1])
      array[num], array[num - 1] = array[num - 1], array[num]
      counter += 1
      num -= 1
    end
  end
  counter
end

class QuickSort
  attr_reader :swaps, :array

  def initialize(array)
    @array = array
    @swaps = 0
  end
  
  def swaps
    @swaps
  end

  def running_time_quicksort(array, start=0, fin= array.length-1)
    return array if start >= fin
    pivot = array[fin]
    temp = start
    start.upto(fin) do |index|
      if array[index] <= pivot
        array[index], array[temp] = array[temp], array[index]
        temp += 1
        @swaps += 1
      end
    end
    temp -= 1
    running_time_quicksort(array, start, temp - 1)
    running_time_quicksort(array, temp + 1, fin)
  end

end


puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
puts quicksort_running_time([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
#16
puts quicksort_running_time([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141, 467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171, 86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226, 421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20, 97, 136, 139, 200, 266, 238, 493, 22, 17, 39])
# 2432