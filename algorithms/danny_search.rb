class Node
  attr_accessor :char, :locations
  def initialize(char = nil)
    self.char       = char
    self.locations  = Hash.new { |h, k| h[k] = [] }
  end

  def occurrences
    self.locations.keys
  end

  def [](pos)
    self.locations[pos]
  end

  def insert(location, left_node, right_node)
    self.locations[location] = [left_node, right_node]
  end
end

class Search
  attr_accessor :chars
  def initialize(text)
    self.chars = Hash.new { |h, k| h[k] = Node.new(k) }

    (0...text.length).each do |i|
      current = text[i]
      left    = text[i - 1]
      right   = text[i + 1]
      self.chars[current].insert(i, self.chars[left], self.chars[right])
    end
  end

  def search_node(node, location, str, index)
    # location is the location in the text
    # index is the location in the string
    if node[location].last.char != str[index + 1]
      nil
    elsif str.length == index + 2
      location - str.length + 2
    else
      search_node(node[location].last, location + 1, str, index + 1)
    end
  end

  def search(str)
    node = self.chars[str[0]]
    return node.occurrences if str.length == 1
    node.occurrences
        .map { |l| search_node(node, l, str, 0) }
        .compact
  end
end

s = Search.new('abc abc def abc')
puts s.search('abc').join(', ')
