#Moving n disks 

def hanoi_steps(number_of_discs, start = 1,aux = 2, last = 3)
  # your code here 
  if number_of_discs > 0
    hanoi_steps(number_of_discs - 1, start, last, aux)
    puts "#{start}->#{last}"
    hanoi_steps(number_of_discs - 1, aux, start, last)
  end 
end