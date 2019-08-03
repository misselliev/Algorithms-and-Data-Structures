# frozen_string_literal: true

def gameOfThrones(s)
  temp = Hash.new(0)
  s.each_char { |item| temp[item] += 1 }
  temp.values.count{|num| num % 2 != 0} > 1 ? "NO" : "YES"
end

p gameOfThrones('aaabbbb')
# Yes

p gameOfThrones('cdefghmnopqrstuvw')
# no

p gameOfThrones('cdcdcdcdeeeef')
# yes
