# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0
  return [[1]] if num_rows == 1
  return [[1], [1, 1]] if num_rows == 2
  
  result = [[1], [1, 1]]
  (2...num_rows).each do |i|
    temp = [1]
    (0...result[i - 1].length - 1).each do |j|
        temp << (result[i - 1][j] +  result[i - 1][j+1])
    end
    temp << 1
    result << temp
  end
  result
end
