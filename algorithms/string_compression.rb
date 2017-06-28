# CtCI 6th Edition Problem 1.6
# String Compression: Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z). 

# Loops through each character so it is O(n)
def compress_string(str)
  compressed_string = '' 
  last_char         = ''

  str.each_char do |char|
    if char == last_char
      # Increment last character/number
      compressed_string[-1] = (compressed_string[-1].to_i + 1).to_s
    else
      compressed_string << char + '1'
      last_char = char
    end
  end
  compressed_string.length < str.length ? compressed_string : str
end

puts compress_string 'hheelloo'
puts compress_string 'hheellloo'
puts compress_string 'hellllllooo'
puts compress_string 'aaabbbcccdefggghhiijjj'
