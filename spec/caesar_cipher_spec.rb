# frozen_string_literal: true

require '../lib/caesar_cipher'

RSpec.describe Code do
  context 'checking character offset' do

    it 'moving 1 position.' do
      expect(Code.new('ab3', 1).caesar_cipher).to eq('bc3')
    end

    it 'when should you go back to the beginning of the alphabet? z to a' do
      expect(Code.new('az', 2).caesar_cipher).to eq('cb')
    end

    it 'when the displacement is negative?' do
      expect(Code.new('az', -1).caesar_cipher).to eq('zy')
    end

    it 'checking that the symbols do not change.' do
      expect(Code.new('abz*:/?)', 2).caesar_cipher).to eq('cdb*:/?)')
    end

    code = Code.new('hello', 2)
    it 'check the original     text' do
      expect(code.decipher).to eq(code.text)
    end

    it 'if the displacement is greater than 10.' do
      expect(Code.new('az', 12).caesar_cipher).to eq('ml')
    end
  end
end
