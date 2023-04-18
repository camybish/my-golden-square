class GrammarStats
    @@total = 0
    @@correct_text = 0 

    def initialize
        @@total += 1
        
    end
  
    def check(text) 
        fail "Enter a sentence" if text.empty?
        if text =~ /^[A-Z].*(\.|\?|\!)$/
            @@correct_text += 1
            p "correct text: #{@@correct_text}"
            p "total: #{@@total}"
            return true
        else 
            return false
        end
    end
  
    def percentage_good
        percent = (@@correct_text / @@total) * 100
        return percent
    end
end

checker_upper = GrammarStats.new
checker_upper.check("This is a string.")
checker_upper.check("This is a string.")
checker_upper.check("This is a string")
checker_upper.check("This is a string.")

puts checker_upper.percentage_good