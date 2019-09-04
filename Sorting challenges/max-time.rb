def maximum_time_range(array)
  times = hours(array)
  results = hours_to_timeslot(times)
  return results.flatten if results.size == 1
  
  results
end

def hours_to_timeslot(times)
  index = 0
  results = Array.new
  while index < times.size do
    start = times[index]
    while index + 1 < times.size && times[index] + 1 == times[index + 1]
      index += 1
    end
    fin = times[index] + 1
    results << [start, fin]
    index += 1
  end
  results
end

def hours(array)
  ranges = timeslot(array)
  times = Array.new
  ranges.each do |range|
    (range[0]...range[1]).each do |time|
      times << time
    end
  end
  times.uniq.sort
end

def timeslot(array)
  index = 0
  ranges = Array.new
  until index >= array.size do
    ranges << [array[index], array[index + 1]]
    index += 2
  end
  ranges
end


p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]

p maximum_time_range([11, 12, 4, 7, 14, 16, 0, 2, 13, 15, 8, 10])
# [[0, 2], [4, 7], [8, 10], [11, 12], [13, 16]]

p maximum_time_range([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])
# [[0, 1], [3, 16]]

p maximum_time_range([5, 14, 1, 4, 13, 19, 3, 6, 9, 8])
# [1, 19]