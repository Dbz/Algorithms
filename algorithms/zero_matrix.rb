# CtCI Edition 6 Problem 1.8
# Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column are set to O.

require 'Set'

# Matrix is NxM
class Matrix
  def initialize(matrix_array)
    @matrix = matrix_array
  end

  # returns a new zeroed Matrix
  def zero_matrix
    rows = @matrix.length - 1
    cols = @matrix[0].length - 1
    matrix = @matrix.dup
    zeroed_rows = Set.new
    zeroed_cols = Set.new
    0.upto(rows).each do |row|
      0.upto(cols).each do |col|
        if (@matrix[row][col]).zero?
          zeroed_rows << row
          zeroed_cols << col
        end
      end
    end
    zeroed_rows.each do |row|
      0.upto(cols).each do |col|
        matrix[row][col] = 0
      end
    end
    zeroed_cols.each do |col|
      0.upto(rows).each do |row|
        matrix[row][col] = 0
      end
    end
    Matrix.new matrix
  end

  def ==(other)
    self.class == other.class && to_a == other.to_a
  end

  def to_a
    @matrix
  end
end

