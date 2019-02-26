def balanced_brackets?(string)
  # your code here
  str = string.gsub(/[^\{\}\[\]\(\)]/, '') #filtering
  return false if str.length.odd? # odd can't be balanced
  pair = { '{' => '}', '[' => ']', '(' => ')' }
  
  stack = []
  str.chars do |item| # iterating in string
    if result = pair[item]
      stack << result # pushing to end
    else
      return false unless stack.pop == item # pops when matched
    end
  end
  stack.empty?
  end

puts balanced_brackets?('(hello)[world]')
puts balanced_brackets?('([)]')
puts balanced_brackets?('[({}{}{})([])]')
