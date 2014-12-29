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
  attr_accessor :my_words, :chars
  def initialize(str)
    self.my_words   = str
    self.chars      = Hash.new { |h, k| h[k] = Node.new(k) }
  end
    
  def buildMap
    (0...self.my_words.length).each do |i|
      c, l, r = self.my_words[i], self.my_words[i - 1], self.my_words[i + 1]
      self.chars[c].insert(i, self.chars[l], self.chars[r])
    end
  end
    
  def searchNode(node, location, str)
    return nil          if str.empty?
    return nil          if node[location].last.char != str[1]
    return location + 1 if str.length == 2
    searchNode(node[location].last, location + 1, str[1..-1])
  end
    
  def search(str)
    node  = self.chars[str[0]]
    return node.occurances if str.length == 1
    (node.occurances.map { |l| searchNode(node, l, str) } - [nil]).map { |x| x - str.length + 1 }
  end
end

# s = Search.new("abc abc def abc")
# s.buildMap
# puts s.search(" ").join(", ")
    