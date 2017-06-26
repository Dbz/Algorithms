# CtCI 6th Edition Problem 1.1
# Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
# cannot use additional data structures?

require 'Set'

def unique_1?(str)
  str.split('').to_set.length == str.length
end

def unique_2?(str)
  visited_chars = Set.new
  str.each_char do |char|
    return false if visited_chars.include? char
    visited_chars << char
  end
  true
end

# Without data structures
# I cheat by turning this into an array to sort, but that's only because I am lazy and want to use build-in methods.
# This could be optimized by doing the comparison while sorting
def unique_3?(str)
  str.chars.sort.each_cons(2) { |char1, char2| return false if char1 == char2 }
  true
end

puts unique_1? 'meow'
puts unique_1? 'meowm'

puts unique_2? 'meow'
puts unique_2? 'meowm'

puts unique_3? 'meow'
puts unique_3? 'meowm'

