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
    unless char == last_char
      # Add two characters to compressed_string: char + number.
      # We will increase the number if the next character is the same as this one
      compressed_string << char + '1'
      last_char = char
    else
      # Character is the same as the last character, so increment the counter
      compressed_string[-1] = (compressed_string[-1].to_i + 1).to_s
    end
  end
  compressed_string.length < str.length ? compressed_string : str
end

