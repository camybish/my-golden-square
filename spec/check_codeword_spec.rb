require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "if the user enter's 'horse', returns 'Correct! Come in." do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it "if the user enter's a word with the structure h***e, returns 'Close, but nope'" do
        result = check_codeword("house")
        expect(result).to eq "Close, but nope."
    end

    it "if user is way off with the codeword" do
        result = check_codeword("pony")
        expect(result).to eq "WRONG!"
    end
end