def maximum_time_range(array)
  answer = []
  # slicing in subarrays sorted by start time
  copy = array.each_slice(2).sort
  sorted = array.each_slice(2).sort
  #adding first activity and removing it from array
  answer.push(sorted[0])
  sorted.shift()
  x = sorted.length
  
  until x == 0
    a = sorted[0][0]
    b = sorted[0][1]
    c = answer[0][0]
    d = answer[0][1]
    if b >= d && c <= b
      answer.push([c,b])
      answer.shift
    else
      answer.push([a,b])
    end
    sorted.shift
    x-=1
  end
  
  p copy
  p answer
  "///"

end

p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]

p maximum_time_range([11, 12, 4, 7, 14, 16, 0, 2, 13, 15, 8, 10])
# [[0, 2], [4, 7], [8, 10], [11, 12], [13, 16]]

p maximum_time_range([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])
# [[0, 1], [3, 16]]

p maximum_time_range([5, 14, 1, 4, 13, 19, 3, 6, 9, 8])
# [1, 19]