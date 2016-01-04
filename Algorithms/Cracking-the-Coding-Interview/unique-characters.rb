def unique_characters(text)
  visited_characters = Set.new

  text.each_char do |character|
    return false if visited_characters.include? character
    visited_characters << character
  end

  true
end
