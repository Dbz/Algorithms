# CtCI Edition 6 Problem 1.8
# Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column are set to O.

# Matrix is NxM
class Matrix
  def initialize(matrix_array)
    @matrix = matrix_array
    @rows = @matrix.length - 1
    @cols = @matrix[0].length - 1
  end

  # returns a new zeroed Matrix
  def zero_matrix
    @zeroed_rows = Set.new
    @zeroed_cols = Set.new
    matrix = @matrix.dup

    find_zeros
    zeroize_rows(matrix)
    zeroize_cols(matrix)

    Matrix.new matrix
  end

  def ==(other)
    self.class == other.class && to_a == other.to_a
  end

  def to_a
    @matrix
  end

  private

  # put zero positions into @zeroed_rows and @zeroed_cols
  def find_zeros
    0.upto(@rows).each do |row|
      0.upto(@cols).each do |col|
        if (@matrix[row][col]).zero?
          @zeroed_rows << row
          @zeroed_cols << col
        end
      end
    end
  end

  # put a zero at every position in a rows in @zeroed_rows
  def zeroize_rows(matrix)
    @zeroed_rows.each do |row|
      0.upto(@cols).each do |col|
        matrix[row][col] = 0
      end
    end
  end

  # put a zero at every position in a column in @zeroed_cols
  def zeroize_cols(matrix)
    @zeroed_cols.each do |col|
      0.upto(@rows).each do |row|
        matrix[row][col] = 0
      end
    end
  end
end

