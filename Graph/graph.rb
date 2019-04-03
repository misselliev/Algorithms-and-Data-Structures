def graph(hash_graph)
  # write your code here
  path = []

  # hash.each do |key, value|
  # path << value

  # hash.each do |key|
  # hash[key].each { |val| path << val[0] }

  i = 0
  until hash_graph.nil?
    puts number = hash_graph.values[0].to_i
    puts nextNum = hash_graph.values[number]
    return path
  end
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
