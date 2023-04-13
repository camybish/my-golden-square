class Counter
    def initialize
      @count = 0
    end
  
    def add(num)
      @count += num
    end
  
    def report
      return "Counted to #{@count} so far."
    end
  end

=begin 
dogs = Counter.new
dogs.add(3)
puts dogs.report 
=end