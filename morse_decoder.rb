$morse_map = {
  "A":".-",
  "B":"-...",
  "C":"-.-.",
  "D":"-..",
  "E":".",
  "F":"..-.",
  "G":"--.",
  "H":"....",
  "I":"..",
  "J":".---",
  "K":"-.-",
  "L":".-..",
  "M":"--",
  "N":"-.",
  "O":"---",
  "P":".--.",
  "Q":"--.-",
  "R":".-.",
  "S":"...",
  "T":"-",
  "U":"..-",
  "V":"...-",
  "W":".--",
  "X":"-..-",
  "Y":"-.--",
  "Z":"--.." 
}


def decode(char)
  $morse_map.map {|key,val| return key if val==char }
end

def decode_word(string)
  ans_string = ''
  output_l1 = string.strip.split(/\s/)
  output_l1.each do |c|
    if c!=' '
      ans_string << decode(c).to_s 
    end
  end
  puts ans_string
end
 

decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

