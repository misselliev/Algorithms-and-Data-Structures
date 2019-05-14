# Comparing two strings and returning coincidences between them
# s1 is compared to s2

def commonChars(s1, s2)
  var1 = []
  var1 = s1.split('')
  var2 = []
  var2 = s2.split('')
  common = 0
  i = 0

  # 1
  common = var1 & var2.to_a

  # 2
  # until i == var2.size
  #   if var1[i] == var2[i]
  #     common += 1
  #     i += 1
  #   else
  #     i += 1
  #   end
  # Fails 3rd case

  # 3
  #     if var2.include? var1
  #       common += 1
  #       i += 1
  #     else
  #       i += 1
  #     end
  # end
  common
end

# Testing
commonChars('a', 'aaa')
# Expected 1
commonChars('a', 'b')
# Expected 0
commonChars('abca', 'xyzbac')
# Expected 3
commonChars('zzzz', 'zzzzzzz')
# Expected 4
