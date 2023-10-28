require '../lib/caesar_cipher.rb'

RSpec.describe Code do
  context "checking text offset" do
    code = Code.new
    it "moving 1 position." do
      expect(code.caesar_cipher('ab', 1)).to eq('bc')
    end

    it "when should you go back to the beginning of the alphabet? z to a" do
      expect(code.caesar_cipher('az', 2)).to eq('cb')
    end

    it "when the displacement is negative?" do
      expect(code.caesar_cipher('az',-1)).to eq('zy')
    end

    it "checking that the symbols do not change." do
      expect(code.caesar_cipher('abz*:/?)', 2)).to eq('cdb*:/?)')
    end

    it "check the original     text" do
      expect(code.decipher).to eq(code.text)
    end

    it "if the displacement is greater than 10." do
      expect(code.caesar_cipher('az', 12)).to eq('ml')
    end
  end
end
