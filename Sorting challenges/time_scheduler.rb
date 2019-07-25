# frozen_string_literal: true

def time_scheduler(array)
  answer = []
  a = 0
  # slicing in subarrays sorted by start time
  sorted = array.each_slice(2).sort_by { |_x, y| y }
  # adding first element that takes least amount of time to complete
  answer.push(sorted[0])
  size = sorted.length 
  
  # comparing finish time with start time
  until a == sorted.length - 2
    answer.push(sorted[a + 1]) if sorted[a][1] <= sorted[a + 1][0] || answer.last[1] < sorted[a+1][0]
    a += 1
  end
  
  # pushing last item if it complies
  answer.push(sorted[size - 1]) if sorted[size - 2][1] >= sorted[size - 1][0]

  answer
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]

p time_scheduler([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])
# => [[1, 2], [4, 5], [8, 14]]

p time_scheduler([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])
# => [[0, 1], [3, 5], [7, 9], [10, 12], [14, 16]]

p time_scheduler([2, 6, 5, 10, 7, 12, 0, 9, 4, 8])
# [[2, 6], [7, 12]]
