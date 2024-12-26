# frozen_string_literal: true

# This module contains the presentation information for the Cesar class.
module Presentation
  def self.show(parameter)
    {
      'title' => '  This is a implementation of Caesar Cipher',
      'enter_number' => "\nEnter the number you want to offset in the alphabet: ",
      'text' => 'Enter the text you want to encrypt: ',
      'encryption' => 'Encrypted string: '
    }[parameter]
  end
end
