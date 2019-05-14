#Part one: Moving two disks

def move(starting, goal)
  empty = 2 if starting == 1 && goal ==3
  empty = 3 if starting == 1 && goal ==2
  empty = 1 if starting == 2 && goal ==3
  empty = 2 if starting == 3 && goal ==1
  empty = 1 if starting == 3 && goal ==2
  empty = 3 if starting == 2 && goal ==1
  
    
  return "#{starting}->#{empty} #{starting}->#{goal} #{empty}->#{goal}" 
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
