class Node
    attr_accessor :char, :locations
    def initialize(char = nil)
        self.char       = char
        self.locations  = Hash.new { Array.new }
    end
  
    def occurances
        self.locations.keys
    end
  
    def nodes_at(location)
        self.locations(location)
    end
  
    def insert(location, leftNode, rightNode)
        self.locations[location] = [leftNode, rightNode]
    end
end



class Search
    attr_accessor :my_words, :chars
    def initialize(str)
        self.my_words   = str
        self.chars      = Hash.new { |hash, key| hash[key] = Node.new(key) }
    end
    
    def buildMap
        (0...self.my_words.length).each do |i|
            c, l, r = self.my_words[i], self.my_words[i - 1], self.my_words[i + 1]
            self.chars[c].insert(i, self.chars[l], self.chars[r])
        end
    end
    
    def searchNode(node, location, str)
    end
    
    def search(str)
        node        = self.chars[str[0]]
        locations   = node.occurances
    end
end

s = Search.new("Hello world, I am some text that is going to be used for searching")
s.buildMap
    