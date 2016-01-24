LOWER_Z = 122

def caesar_cipher(text, shift)
  ciphered_text = ''
  shift = shift % LOWER_Z
  text.each_char do |letter|
    ciphered_text += letter.ord + shift > LOWER_Z ? (letter.ord + shift - LOWER_Z).chr : (letter.ord + shift).chr
  end
  ciphered_text
end
