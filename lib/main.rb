# frozen_string_literal: true

require 'colorize'
require './caesar_cipher'
require './description'

puts Presentation.show('title').colorize(:green)

print Presentation.show('text')
phrase = gets.chomp.to_s

print Presentation.show('enter_number')
key = gets.chomp.to_i

phrase_key = Code.new(phrase, key)

print Presentation.show('encryption'), phrase_key.caesar_cipher, "\n"
