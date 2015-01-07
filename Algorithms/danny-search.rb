class Node
  attr_accessor :char, :locations
  def initialize(char = nil)
    self.char       = char
    self.locations  = Hash.new { |h, k| h[k] = Array.new }
  end
  
  def occurances
    self.locations.keys
  end
  
  def [](pos)
    self.locations[pos]
  end
  
  def insert(location, leftNode, rightNode)
    self.locations[location] = [leftNode, rightNode]
  end
end

class Search
  attr_accessor :chars
  def initialize(str)
    self.chars = Hash.new { |h, k| h[k] = Node.new(k) }
    
    (0...str.length).each do |i|
      c, l, r = str[i], str[i - 1], str[i + 1]
      self.chars[c].insert(i, self.chars[l], self.chars[r])
    end
  end
    
  def searchNode(node, location, str, index)
    # location is the location in the text
    # index is the location in the string
    return nil if node[location].last.char != str[index + 1]
    str.length == index + 2 ? location + 1 : searchNode(node[location].last, location + 1, str, index + 1)
  end
    
  def search(str)
    node  = self.chars[str[0]]
    return node.occurances if str.length == 1
    node.occurances
      .map { |l| searchNode(node, l, str, 0) }
      .compact
      .map { |x| x - str.length + 1 }
  end
end

s = Search.new("abc abc def abc ")
puts s.search("abc").join(", ")