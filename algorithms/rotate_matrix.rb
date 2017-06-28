# CtCI 6th Edition Problem 1.7
# Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4
# bytes, write a method to rotate the image by 90 degrees. Can you do this in place? 

# Matrix is NxN and this loops through each position making it O(n^2)
def rotate_matrix(matrix) 
  len = matrix.length - 1
  new_matrix = Array.new(len + 1) { Array.new(len + 1) }
  0.upto(len) do |col|
    len.downto(0) do |row|
      new_matrix[col][3 - row] = matrix[row][col] 
    end
  end
  new_matrix
end

# Loops n times, n times again, and then calls rotate_position making it O(n^2)
def rotate_matrix_in_place(matrix)
  (matrix.length / 2).floor.times do |row|
    (matrix.length - 1 - 2 * row).times do |num_cols|
      offset = row
      rotate_position(matrix, row, offset + num_cols)
    end
  end
  matrix
end

# rotate_position loops 3 times, so it is O(1) 
def rotate_position(matrix, pivot_row, pivot_col)
  len = matrix.length - 1
  next_row, next_col = pivot_col, len - pivot_row
  3.times do
    matrix[pivot_row][pivot_col], matrix[next_row][next_col] = matrix[next_row][next_col], matrix[pivot_row][pivot_col]
    next_row, next_col = next_col, len - next_row 
  end
end

nums = [[0, 1, 2, 3],
        [4, 5, 6, 7],
        [8, 9, 10, 11],
        [12, 13, 14, 15]]

rotated_nums = [[12, 8, 4, 0],
                [13, 9, 5, 1],
                [14, 10, 6, 2],
                [15, 11, 7, 3]]

puts rotate_matrix(nums) == rotated_nums
puts rotate_matrix_in_place(nums) == rotated_nums

