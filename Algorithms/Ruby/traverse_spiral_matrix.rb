# Traverse 2D Array in a spiral
# Set 4 variables to define the outer bounds of the matrix - left, right, top, bottom
# Set a direction: 0 -> left to right, 1 -> top to bottom, 2 -> right to left, 3 -> bottom to top
# At each iteration check which direction is set and iterate through those values in the matrix
# Then increment the outer bound by 1 to show that that area has already been traced

def traverse_spiral(matrix)
  l = 0
  r = matrix[0].length - 1
  b = matrix.length - 1
  t = 0
  dir = 0

  # loop until top bound equals bottom bounds and left bounds equals right
  while (t <= b && l <= r)

    if dir == 0
      (l..r).each{ |left_index| puts matrix[t][left_index] }
      t += 1
    end

    if dir == 1
      (t..b).each{ |top_col_ind| puts matrix[top_col_ind][r] }
      r -= 1
    end

    if dir == 2
      (r).downto(l) { |right_index| puts matrix[b][right_index] }
      b -= 1
    end

    if dir == 3
      (b).downto(t) { |bot_col_index| puts matrix[bot_col_index][l] }
      l += 1
    end

    dir = (dir + 1) % 4
  end
end
