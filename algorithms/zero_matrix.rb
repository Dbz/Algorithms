# CtCI Edition 6 Problem 1.8
# Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column are set to O.

require 'Set'

def zero_matrix(matrix)
  rows, cols = matrix.length - 1, matrix[0].length - 1
  zeroed_rows = Set.new
  zeroed_cols = Set.new
  0.upto(rows).each do |row|
    0.upto(cols).each do |col|
      if matrix[row][col] == 0
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
  matrix
end

matrix = [[0, 1, 2, 3, 4],
          [5, 6, 7, 8, 9],
          [1, 0, 3, 4, 5]]

zeroed_matrix = [[0, 0, 0, 0, 0],
                 [0, 0, 7, 8, 9],
                 [0, 0, 0, 0, 0]]

puts zero_matrix(matrix) == zeroed_matrix

