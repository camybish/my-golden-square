require 'string_builder'

RSpec.describe StringBuilder do 
    it "input an empty string and return 0 as size" do 
        no_char = StringBuilder.new
        expect(no_char.size).to eq 0
    end

    it "input an empty string, return empty string" do
        empty = StringBuilder.new
        expect(empty.output).to eq ""
    end

    it "input 'balling', return number of characters" do
        balling = StringBuilder.new
        balling.add("balling")
        expect(balling.size).to eq 7
    end

end