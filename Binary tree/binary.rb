def tree_height(tree_as_list)
  step = 1
  if tree_as_list.empty?
    max = 0
  else
    r_height = 0
    l_height = 0
    max_left = 0
    max_right = 0
    max = 0

    until step.nil?

      l_height = !tree_as_list[(step * 2) + 1].nil? ? l_height + 1 : l_height
      r_height = !tree_as_list[(step * 2) + 2].nil? ? r_height + 1 : r_height
      ctr_l = tree_as_list[(step * 2) + 1]
      ctr_r = tree_as_list[(step * 2) + 2]

      max_left = l_height if l_height > max_left
      max_right = r_height if r_height > max_right
      step = !ctr_l.nil? && !ctr_l.nil? ? step *= 2 : nil
    end
    max = max_left > max_right ? max_right : max_left
  end

  max + 1
end