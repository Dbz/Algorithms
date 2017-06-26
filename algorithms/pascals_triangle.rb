# @param {Integer} num_rows
# @return {Integer[][]}

#    1
#   1 1
#  1 2 1
# 1 3 3 1

def pascals_triangle(num_rows)
  rows = [[1], [1, 1]]

  while rows.count < num_rows
    new_row = [1]
    rows.last.each_cons(2) { |first, second| new_row << first + second }
    new_row << 1
    rows << new_row
  end

  rows[0...num_rows]
end
