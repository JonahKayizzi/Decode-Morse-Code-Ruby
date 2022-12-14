def decode_char(morseChar)
    characters = { 
    ".-" => 'A', 
    "-..." => 'B',
     "-.-." => 'C',
     "-.." => 'D',
     "." => 'E',
     "..-." => 'F',
     "--." => 'G',
     "...." => 'H',
     ".." => 'I',
     ".---" => 'J',
     "-.-" => 'K',
     ".-.." => 'L',
     "--" => 'M',
     "-." => 'N',
     "---" => 'O',
     ".--." => 'P',
     "--.-" => 'Q',
     ".-." => 'R',
     "..." => 'S',
     "-" => 'T',
     "..-" => 'U',
     "...-" => 'V',
     ".--" => 'W',
     "-..-" => 'X',
     "-.--" => 'Y',
     "--.." => 'Z'
    }
    characters[morseChar].upcase
end

def decode_word(morse_word)
  word = ''
  wordArray = morse_word
  wordArray.split.each { |i| word += decode_char(i) }
  word
end
def decode_message(morseMessage)
  messageArray = morseMessage.split('   ')
  output = ''
  messageArray.each { |i| output += "#{decode_word(i)} " }
  output
end


