def connected_graph?(graph)
  queue = [graph.keys[0]]
  visited = []

  until queue.empty?
    node = queue.shift
    visited << node if !visited.include?(node)
    queue += graph[node].reject { |current| visited.include? current }
    answer = graph.keys.length == visited.length
  end
  answer
end

puts connected_graph?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts connected_graph?(
  0 => [1, 2],
  1 => [0, 2],
  2 => [0, 1, 3, 4, 5],
  3 => [2, 4],
  4 => [3, 2],
  5 => [2]
)
# => true
