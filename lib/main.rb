# frozen_string_literal: true

require 'colorize'
require './caesar_cipher'

puts 'This is a implementation of Caesar Cipher'.colorize(:magenta)

puts "\nIngrese el número que quiere para el desplazamiento en el alfabeto (Enter the number you want to offset in the alphabet.)"
key = gets.chomp.to_i

puts "\nIngrese el texto que quiere xifrar (Enter the text you want to encrypt)"
phrase = gets.chomp.to_s
encrypting = Code.new(phrase, key)
