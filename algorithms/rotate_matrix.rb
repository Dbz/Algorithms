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
  def rotate_matrix
    len = @matrix.length - 1
    new_matrix = Array.new(len + 1) { Array.new(len + 1) }
    0.upto(len) do |col|
      len.downto(0) do |row|
        new_matrix[col][3 - row] = @matrix[row][col]
      end
    end
    Matrix.new new_matrix
  end

  # Loops n times and then n times again making it O(n^2) : rotate_position is O(1)
  # Returns self which is the matrix rotated 90 degrees clockwise
  def rotate_matrix_in_place
    (@matrix.length / 2).floor.times do |row|
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
      @matrix[pivot_row][pivot_col], @matrix[next_row][next_col] = @matrix[next_row][next_col], @matrix[pivot_row][pivot_col]
      next_row, next_col = next_col, len - next_row
    end
  end
end

