def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  middle = ((min_interval + max_interval) / 2).floor
  result = 0
  temp = middle * middle
  if temp == number
    return result = temp / middle
  elsif temp > number
    max_interval = max_interval - 1
  else temp < number
    min_interval = middle + 1 
  end
  sqrt_recursive(number, min_interval, max_interval)
end

puts sqrt(25)
puts sqrt(7056)
