# frozen_string_literal: true

# This class implements the changing of characters and their spaces to encrypt the entered string.
class Code
  attr_accessor :text, :range

  def initialize(text, range = 1)
    @text = text
    @range = range
    @ab_z = [*'a'..'z'] + [*'A'..'Z']
    @orig = text
  end

  def caesar_cipher
    pass = ''
    @text.each_char do |char|
      pass += verify_char(char) ? change_char(char, @range) : char
    end
    pass
  end

  def verify_char(char)
    @ab_z.include?(char)
  end

  def give_me_back_char(ind)
    @ab_z[ind]
  end

  def change_char(char, range)
    new_range = (@ab_z.index(char) + range) % 26
    give_me_back_char(new_range)
  end

  def decipher
    @orig
  end

  private :change_char, :give_me_back_char, :verify_char
end
