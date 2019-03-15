def exact_sum?(k, coins)
  backtracking_sum(k, coins, 0)
end


# def backtracking_sum(result, n, array)
#   n= array.length
#   n = array.inject(0){|sum,x| sum + x} #total iterations calculus
#   return true if n == 0 #means we have reached all iterations 
#   return false if sum <= result
#   end


def backtracking_sum(result, array, start)
  start = 0
  n = (array.length - 1)
  sum = 0
  return true if result == (0..n).each do |i| puts sum += array[i]
  return false if start == n +1
  (0..n).each do |i| puts sum += array[i] 
    return true if sum == result 
    # sum +=array[i+1] if sum > result  
    break if sum > result 
  end
  backtracking_sum(result, array, start+1)
end
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
