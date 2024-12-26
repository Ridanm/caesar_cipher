# frozen_string_literal: true

require 'colorize'
require './caesar_cipher'
require './description'

puts Presentation.show('title').colorize(:green)
puts Presentation.show('enter_number')
key = gets.chomp.to_i

puts Presentation.show('text')
phrase = gets.chomp.to_s

encrypt = Code.new(phrase, key)
encrypt.caesar_cipher
