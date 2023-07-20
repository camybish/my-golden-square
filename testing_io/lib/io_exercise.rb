class Calculator

    def initialize(io)
        @io = io
    end


    def operation

        @io.puts "I will subtract two numbers: What shall they be?"
        input_1 = @io.gets.chomp
        
        @io.puts "And the second number?"
        input_2 = @io.gets.chomp

        @io.puts input_1.to_i - input_2.to_i

    end
end