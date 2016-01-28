require 'Set'

# @param {String} text
# @return {String}

def remove_duplicate_characters(text)
  visited_characters = Set.new
  new_text           = ''

  text.each_char do |character|
    new_text += character unless visited_characters.include? character
    visited_characters << character
  end

  new_text
end
