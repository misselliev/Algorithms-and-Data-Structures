
def graph_cycle?(graph)
  queue = [graph.keys[0]]
  visited = []

  until queue.empty?
    node = queue.shift
    if !visited.include?(node)
      visited << node
    else
      return true
    end
    queue += graph[node].reject { |current| visited.include? current } unless graph[node].nil?
    return false if graph.keys.length == visited.length
  end
end

puts graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false

puts graph_cycle?({
  0=>[2], 
  1=>[4, 3], 
  2=>[0, 5], 
  3=>[5, 1], 
  4=>[1], 
  5=>[2, 3]})
# false