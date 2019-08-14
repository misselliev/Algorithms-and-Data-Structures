def full_merge_sort(array)
  hashing = Hash.new
  array.each{|item| 
    temp = []
    arr = item.split(' ')
    temp << hashing[arr[0].to_i] if !(hashing[arr[0].to_i].nil?)
    temp << arr[1]
    hashing[arr[0].to_i] = temp.flatten
  }
  new_array = mergesort(hashing.keys)
  result = []
  new_array.each{|x|
    result << hashing[x]
  }
  result.flatten
end
def mergesort(list)
  return list if list.size <= 1
  mid   = list.size / 2
  left  = list[0...mid]
  right = list[mid...list.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]