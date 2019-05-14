# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def balanced_tree?(root)
  return true if !root || (!root.left && !root.right)

  check_balanced = { value: true }
  left_height = height(root.left, check_balanced)
  right_height = height(root.right, check_balanced)

  (left_height - right_height).abs <= 1 && check_balanced[:value]
end

def height(node, check_balanced)
  return 0 unless node
  return 1 if !node.left && !node.right

  left_height = node.left ? height(node.left, check_balanced) + 1 : 1
  right_height = node.right ? height(node.right, check_balanced) + 1 : 1

  if (left_height - right_height).abs > 1 && check_balanced[:value]
    check_balanced[:value] = false
  end

  [left_height, right_height].max
end
