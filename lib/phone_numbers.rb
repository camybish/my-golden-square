class PhoneBook
    def initialize
        @numbers = []
    end

    def extract_numbers(text) 
        if text =~ /\d{11}/
            text.scan(/\d{11}/).each do |number|
            @numbers << number
            end
        end
        @numbers.uniq!
    end

    def list 
        return @numbers
    end 
end

=begin
    
1
phone.book = PhoneBook.new
phone_book.list # => []

2 X
phone_book = PhoneBook.new
phone_book.extract_numbers("078123123123")
phone_book.list # => ["078123123123"]

3 X
phone_book = PhoneBook.new
phone_book.extract_numbers("I was calling my friend with the number 078123123123 the other day")
phone_book.list # => ["078123123123"]

4 X
phone_book = PhoneBook.new
phone_book.extract_numbers("My mates digits: 078123123123, 078456456456")
phone_book.list # => ["078123123123", "078456456456"]

5
phone_book = PhoneBook.new
phone_book.extract_numbers("My mates digits: 078123123123)
phone_book.extract_numbers("Also 078456456456")
phone_book.list # => ["078123123123", "078456456456"]

7 - too few digits
phone_book = PhoneBook.new
phone_book.extract_numbers("072843")
phone_book.list # => []

8
phone_book = PhoneBook.new
phone_book.extract_numbers("George's number is 078123123123")
phone_book.extract_numbers("Angela's number is 078123123123")
phone_book.list # => ["078123123123"]

=end