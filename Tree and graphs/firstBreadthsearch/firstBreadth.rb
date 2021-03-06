def bfs(hash_graph)
  idx = hash_graph.keys
  val = hash_graph.values
  output = [idx[0]]
  i = 0

  while
    unless output[-2] == idx[-1]
      output << val[i][0]
    end

    i = val[i][0]
    break if output.include?(val[i][0])
  end
  return idx if output.size <= 2
  output
end

p bfs({ 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]

=begin
Model solution

def bfs(graph)
  # write your code here
  queue = [0]
  result = []
  visited = []
  
  until queue.empty?
    head = queue.shift
    result << head
    visited << head
    
    not_visited = graph[head].reject { |node| visited.include? node }
    
    visited += not_visited
    queue += not_visited
  end
  
  result
end

=end