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

def balanced_tree?(array_tree, i = 0)
  return true if array_tree[i].nil?

  left = get_depth(array_tree, 2 * i + 1)
  right = get_depth(array_tree, 2 * i + 2)
  return true if (left - right).abs <= 1 && balanced_tree?(array_tree, 2 * i + 1) == true && balanced_tree?(array_tree, i * 2 + 2) == true

  false
end

def get_depth(array_tree, i = 0)
  return 0 if array_tree[i].nil? || array_tree[i].zero?

  left = get_depth(array_tree, 2 * i + 1)
  right = get_depth(array_tree, 2 * i + 2)
  [left, right].max + 1
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
