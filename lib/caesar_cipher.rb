# frozen_string_literal: true

# This class implements the changing of characters and their spaces to encrypt the entered string.
class Code
  attr_accessor :text, :range

  def initialize(text, range)
    @text = ''
    @range = 1
    @ab_z = [*'a'..'z']
  end

  def caesar_cipher(text)
    @text = text
    pass = ''

    text.downcase.each_char do |char|
      pass = veryfi_char(char) ? change_char(char) : char
    end

    pass
  end

  def verify_char(char)
    @ab_z.include?(char.downcase)
  end

  def give_me_back_char(ind)
    @ab_z[ind]
  end

  def change_char(char, range)
    new_range = (@ab_z.index(char) + range) % 26

    give_me_back_char(new_range)
  end

  def decipher
    @text
  end

  private :change_char, :give_me_back_char, :verify_char
end
