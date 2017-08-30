# CtCI 6th Edition Problem 1.7
# Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4
# bytes, write a method to rotate the image by 90 degrees. Can you do this in place?

# Matrix is always NxN
class Matrix
  def initialize(matrix_array)
    @matrix = matrix_array
  end

  # Matrix is NxN and this loops through each position making it O(n^2)
  # Returns a new rotated matrix
  # Each element (r, c) of NxN matrix needs to be moved to position (c, N - 1 - r)
  def rotate_matrix
    len = @matrix.length - 1
    new_matrix = Array.new(len + 1) { Array.new(len + 1) }
    0.upto(len) do |col|
      len.downto(0) do |row|
        new_matrix[col][len - row] = @matrix[row][col]
      end
    end
    Matrix.new new_matrix
  end

  # Loops n times and then n times again making it O(n^2) : rotate_position is O(1)
  # Returns self which is the matrix rotated 90 degrees clockwise
  def rotate_matrix_in_place
    # We only need to loop over 1/4th of the numbers because rotate_position rotates all four numbers.

    # Because the matrix is rotating in place, only go over the first half of the rows.
    # The second half will be rotated by rotate_position as we rotate the first half. 
    (@matrix.length / 2).floor.times do |row|
      # The number of columns to rotate per row number is equal to N - 1 - (2 * row_number).
      # Each column gets offset by how many row's we've seen because the numbers in the left most columns
      # have already been rotated by previous iterations
      (@matrix.length - 1 - 2 * row).times do |num_cols|
        offset = row
        rotate_position(row, offset + num_cols)
      end
    end
    self
  end

  def ==(other)
    self.class == other.class && to_a == other.to_a
  end

  def to_a
    @matrix
  end

  private

  # rotate_position loops 3 times, so it is O(1)
  def rotate_position(pivot_row, pivot_col)
    len = @matrix.length - 1
    next_row = pivot_col
    next_col = len - pivot_row
    3.times do
      # The positions (r, c) gets rotated into is (c, len - 1 - row)
      # To rotate in place, the first position is the pivote position where each position gets swapped into.
      # We do this swap three times and each number is rotated once
      @matrix[pivot_row][pivot_col], @matrix[next_row][next_col] = @matrix[next_row][next_col], @matrix[pivot_row][pivot_col]
      next_row, next_col = next_col, len - next_row
    end
  end
end

