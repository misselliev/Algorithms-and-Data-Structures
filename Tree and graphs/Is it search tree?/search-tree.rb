MIN = -500
MAX = 500

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i].zero?

  node = Node.new(array[i])

  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def search_tree?(tree)
  tree = array_to_tree(tree, 0)
  compare(tree, MIN, MAX)
end

def compare(node, min, max)
  return true if node.nil?
  return false if node.data < min || node.data > max

  compare(node.left, min, node.data - 1) && compare(node.right, node.data + 1, max)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
