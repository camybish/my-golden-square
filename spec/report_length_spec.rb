require 'report_length'

RSpec.describe "report_length method" do
    it "inputs 'through' and outputs 'This string was 7 characters long.'" do 
        result = report_length("through")
        expect(result).to eq "This string was 7 characters long."
    end

    it "inputs 'cat' and outputs 'This string was 3 characters long.'" do 
        result = report_length("cat")
        expect(result).to eq "This string was 3 characters long."
    end

    it "inputs '' and outputs 'This string was 0 characters long.'" do 
        result = report_length("") 
        expect(result).to eq "This string was 0 characters long."
    end
end