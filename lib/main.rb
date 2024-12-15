# frozen_string_literal: true

require 'colorize'
require './caesar_cipher'

puts 'This is a implementation of Caesar Cipher(Adz, 1)'

phrase = Code.new
puts phrase.caesar_cipher('Adz', 1)

puts "\nEnter the text you want to encrypt"
phrase = gets.chomp

puts "\nEnter the displacement number"
key = gets.chomp.to_i

puts "\nCipher text"
encrypting = Code.new

puts "Cipher: #{encrypting.caesar_cipher(phrase, key)}"

puts "Decipher: #{encrypting.decipher}"
