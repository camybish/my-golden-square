class StringRepeater 

    def initialize(io)
        @io = io
    end

    def more
        @io.puts "I will repeat your string many many times!\n (Enter a string)"
        input_1 = @io.gets.chomp
        @io.puts "and how many times?"
        input_2 = @io.gets.chomp
        
        @io.puts input_1 * input_2.to_i

    end


end

ok = StringRepeater.new(Kernel)
puts ok