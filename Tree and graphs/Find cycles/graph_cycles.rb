def graph_cycle?(graph)
  stack = [0]
  copy = []
  visited = []

  until stack.empty?
    head = stack.pop
    copy << head
    visited << head unless visited.include?(head)
    visited += graph[head].reject { |node| visited.include? node }
    result = false unless visited.include?(head)
    # visited += not_visited
    # stack += not_visited.reverse
    stack += visited.reverse
  end

  result
end

puts graph_cycle?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts graph_cycle?(
  0 => [2],
  1 => [2],
  2 => [0, 1, 3, 4, 5],
  3 => [2],
  4 => [2]
)
# => false
