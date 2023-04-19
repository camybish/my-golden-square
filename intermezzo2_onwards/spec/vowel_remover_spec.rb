require 'vowel_remover'

RSpec.describe "remove_vowels method" do
  xit "removes a vowel from a simple string" do
    remover = VowelRemover.new("ab")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "b"
  end

  xit "removes vowels from a complex string" do
    remover = VowelRemover.new("We will remove the vowels from this sentence.")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "W wll rmv th vwls frm ths sntnc."
  end

  it "removes all vowels" do 
    remover = VowelRemover.new("aeiou")
    expect(remover.remove_vowels).to eq ""
  end
end