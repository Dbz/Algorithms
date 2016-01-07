require 'set'
# Determine if a Sudoku is valid, according to: Sudoku Puzzles - The Rules.
# The Sudoku board could be partially filled, where empty cells are filled with the character '.'
#
# Each row must have the numbers 1-9 occuring just once.
# Each column must have the numbers 1-9 occuring just once.
# And the numbers 1-9 must occur just once in each of the 9 sub-boxes of the grid.
#
# @param {Character[][]} board
# @return {Boolean}
# ex. board = [".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]

def is_valid_sudoku(board)

  # horizontals
  (0...9).each do |i|
    numbers = Set.new
    (0...9).each do |j|
      space = board[i][j]
      if space != '.'
        return false if numbers.include?(space)
        numbers.add(space)
      end
    end
  end

  #verticals
  (0...9).each do |j|
    numbers = Set.new
    (0...9).each do |i|
      space = board[i][j]
      if space != '.'
        return false if numbers.include?(space)
        numbers.add(space)
      end
    end
  end

  #squares
  0.step(9, 3) do |i|
    0.step(9, 3) do |j|
      numbers = Set.new
      (i...i + 3).each do |a|
        (j...j+3).each do |b|
          space = board[a][b]
          if space != '.'
            return false if numbers.include?(space)
            numbers.add(space)
          end
        end
      end
    end
  end
  true
end
