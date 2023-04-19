require 'grammar_stats'

RSpec.describe GrammarStats do 
    context '#check' do 
        it 'fails' do 
            checker_upper = GrammarStats.new
            result = checker_upper.check("")
            expect { result }.to raise_error "Enter a sentence."
        end
    end

    context '#percentage_good' do 
        it 'takes multiple text variable and returns %' do
            checker_upper = GrammarStats.new
            checker_upper.check("This is a string.")
            checker_upper.check("this is a string")
            checker_upper.check("This is a string.")
            checker_upper.check("This is a string!")
            expect(checker_upper.percentage_good).to eq 75
        end
    end
end

