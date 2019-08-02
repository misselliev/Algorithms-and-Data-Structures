def gameOfThrones(s)
  result = []
  counts = Hash.new(0)
  s.each_char { |item| counts[item] += 1 }
  counts.each {|item, key| key.odd? && key >= 1 || key >=3  ? result= 'YES' : result = 'NO'}
  return result
end

p gameOfThrones('aaabbbb')
# Yes

p gameOfThrones('cdefghmnopqrstuvw')
# no

p gameOfThrones('cdcdcdcdeeeef')
# yes