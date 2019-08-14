def merge(array1, array2)
  result = []
  i, j = 0,0
  while i < array1.length && j < array2.length do
    if array2[j] > array1[i]
      result.push(array1[i])
      i+=1
    else
      result.push(array2[j])
      j+=1
    end
  end
    while i < array1.length do
    result.push(array1[i])
    i+=1;
  end
  while j < array2.length do
    result.push(array2[j])
        j+=1;
  end
  return result
end

def full_merge_sort(array)
  answer = []
  return array if array.length <= 1  
  mid = (array.length/2).floor
  left = full_merge_sort(array.slice(0,mid))
  right= full_merge_sort(array.slice(mid, array.length))
  # left = array.slice(0, mid)
  # right = array.slice(mid, array.length)
  # p mid: +mid.to_s
  # p left: +left.to_s
  # p right: + right.to_s
  return merge(left,right)
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
