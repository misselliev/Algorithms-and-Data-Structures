def maximum_time_range(array)
  answer = []
  a = 0
  # slicing in subarrays sorted by start time
  sorted = array.each_slice(2).sort

  until a == sorted.length - 1
    answer.push(sorted[a]) if sorted[a+1][0] < sorted[a][1] && sorted[a][1] > sorted[a+1][1] || sorted[a][1] < sorted[a+1][0] && !answer.include?(sorted[a][1])
    
    if !answer.empty?
      answer.push(sorted[a]) if answer.last[1] > sorted[a][0]
    end
    #answer.last[0][]
    
    # adding up subarrays
    answer.push([sorted[a][0],sorted[a+1][1]]) if sorted[a+1][0] < sorted[a][1] && sorted[a+1][1] > sorted[a][1]
    a+=1
  end
  
  p sorted
  p sorted.length
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