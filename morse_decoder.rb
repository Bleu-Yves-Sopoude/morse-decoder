# frozen_string_literal: true

# * morse_decoder class
class MorseDecoder
  def initialize
    @morse_map = {
      A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.',
      H: '....', I: '..', J: '.---', K: '-.-',
      L: '.-..', M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.',
      S: '...', T: '-',
      U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..'
    }
  end

  def decode(char)
    @morse_map.map { |key, val| return key if val == char }
    ' '
  end

  def decode_word(string)
    output_l1 = string.strip.split(/\s/)
    ans_string = String.new
    output_l1.each do |char|
      ans_string << decode(char).to_s
    end
    puts ans_string
  end
end

morse_decoder = MorseDecoder.new
morse_decoder.decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
