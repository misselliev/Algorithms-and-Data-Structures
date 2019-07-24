def merge(array1, array2)
  result = []
  i, j = 0,0
  
  while i < array1.length && j < array2.length do
    return array1 if array1.length < 0 || array1[i].nil?
    return array2 if array2.length < 0 || array2[j].nil?
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
  numbers.each_with_index do |num, idx|
    result << array.select  {|i| i.split(/\W+/)[0].to_i == idx}
    #0 index of result array
  end
  result.flatten!
  result.each_with_index {|num, idx| result[idx] = num.split(/\W+/)[1] }
  
  
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
  # left.each_with_index do |num, idx|
  #   leftsort << array.select{|item| item.split(/\W+/)[0].to_i == idx}
  # end
  # right.each_with_index do |num, idx|
  #   rightsort << array.select{|item| item.split(/\W+/)[0].to_i == idx}
  # end
  # return merge(leftsort, rightsort)
  # return merge(left,right)
  final = merge(left, right)
  final.each do |num|
    answer << num[2..num.length] if !num.nil?
  # answer << array.select { |item| item.split(/\W+/)[0].to_i == idx }
  end
  answer
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
