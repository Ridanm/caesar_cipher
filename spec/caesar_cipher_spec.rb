require '../lib/caesar_cipher.rb'

RSpec.describe Code do
  context "checking text offset" do
    code = Code.new
    it "is correct" do
      expect(code.caesar_cipher('ab', 1)).to eq('bc')
    end

    it "z to a" do
      expect(code.caesar_cipher('az', 2)).to eq('cb')
    end
  end
  context "check the original text" do
    code = Code.new
    it "entered text" do
      expect(code.decipher).to eq(code.text)
    end
  end
end
