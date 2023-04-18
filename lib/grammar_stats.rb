class GrammarStats
    def initialize
        @passed = 0
        @failed = 0 
    end
  
    def check(text) 
        if text =~ /^[A-Z].*(\.|\?|\!)$/
            @passed += 1
        else 
            @failed += 1
        end
    end
  
    def percentage_good
        total = @passed + @failed
        return (@passed / total.to_f) * 100
    end
end

checker_upper = GrammarStats.new
checker_upper.check("This is a string.")
checker_upper.check("This is a string.")
checker_upper.check("This is a string")
checker_upper.check("This is a string.")

puts checker_upper.percentage_good

# text =~ /^[A-Z].*(\.|\?|\!)$/

#CHECK
# text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
# PERCENTAGE_GOOD
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.