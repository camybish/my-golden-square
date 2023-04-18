require 'Grammar_Whatever'

#CHECK
# text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
# PERCENTAGE_GOOD
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.

RSpec.describe GrammarStats do 
    context '#check' do 
        it 'returns true if "text" starts with a capital and ends with a full stop' do
            checker_upper = GrammarStats.new
            result = checker_upper.check("Major frustration is felt by myself.")
            expect(result).to eq true
        end

        it 'fails' do 
            checker_upper = GrammarStats.new
            expect { checker_upper.check("") }.to raise_error "Enter a sentence."
        end
    end

    context '#percentage_good' do 
        it 'takes multiple strings in "text" and returns the percentage correct' do 
            checker_upper = GrammarStats.new
            checker_upper.check("This is a string.")
            checker_upper.check("This is a string I guess.")
            checker_upper.check("This is also a string maybe")
            checker_upper.check("This is a new string.")
            expect(checker_upper.percentage_good).to eq 75
        end
    end 
end
