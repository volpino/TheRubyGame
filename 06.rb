def morse_to_eng(morse)
 h = {'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
      '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
      '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---'  => 'O',
      '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
      '-.--' => 'Y', '--..' => 'Z', '   ' => ' ', ' ' => ''}
  morse.gsub(/([\.\-]+|\s{3}|\s{1})/, h)
end

puts morse_to_eng(".... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-..")
