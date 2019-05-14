def graph(hash_graph, key = 0, path=[])
	path << key if path.empty?
	val = hash_graph[key][0]
	path << val
	graph(hash_graph, key = val, path) unless val == 4
	return path
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
