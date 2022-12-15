CHARACTERS = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(morse_char)
  CHARACTERS[morse_char].upcase
end

def decode_word(morse_word)
  word = ''
  word_array = morse_word
  word_array.split.each { |i| word += decode_char(i) }
  word
end

def decode_message(morse_message)
  message_array = morse_message.split('   ')
  output = ''
  message_array.each { |i| output += "#{decode_word(i)} " }
  output
end

# Test
puts decode_char('--') # M
puts decode_word('-- .. .-.. .-') # MILA
puts decode_word('.--- --- -.') # JON
puts decode_message('-- -.--   -. .- -- .') # MY NAME
old_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode_message(old_bottle) # A BOX FULL OF RUBIES
