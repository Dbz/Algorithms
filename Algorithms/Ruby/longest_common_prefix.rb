# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  min, max = strs.minmax
  idx = min.size.times { |i| break i unless min[i] == max[i] }
  min[0...idx]
end
