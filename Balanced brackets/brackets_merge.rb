def balanced_brackets?(string)
  str = string.gsub(/[^\{\}\[\]\(\)]/, '') # filtering
  return false if str.length.odd? # odd can't be balanced

  out = false
  stack = []
  str.chars do |item| # iterating in filtered string
    case item
    when '{'
      stack << item
    when '('
      stack << item
    when '['
      stack << item
    when '}'
      if stack[-1] == '{'
        stack.pop
        out = true
      else
        return out = false
      end

    when ')'
      if stack[-1] == '('
        stack.pop
        out = true
      else
        return out = false
      end

    when ']'
      if stack[-1] == '['
        stack.pop
        out = true
      else
        return out = false
      end
    end
  end
  out
end
end