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

    print characters[morseChar].upcase
end

def decode_word(morseWord)
    @wordArray = morseWord.split
    @wordArray.each do |i|
        decode_char(i)
    end
    print " "
end

def decode_message(morseMessage)
    @messageArray = morseMessage.split(/   /)
    @messageArray.each do |i|
        decode_word(i)
    end
end


