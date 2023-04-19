require 'phone_numbers'

RSpec.describe PhoneBook do 

    context '#list' do 
        it 'puts an empty list' do
            phone.book = PhoneBook.new
            expect(phone_book.list).to eq []
        end
    end

    context '#extract_numbers' do
        it 'takes a phone number from text and adds to list' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers("078123123123")
            expect(phone_book.list).to eq ["078123123123"]
        end

        it 'pulls multiple numbers from text and adds to list' do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My mates digits: 078123123123, 078456456456")
            expect(phone_book.list).to eq ["078123123123", "078456456456"]
        end

        it 'pulls a phone number from text and adds to list' do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("I was calling my friend with the number 078123123123 the other day")
            expect(phone_book.list).to eq ["078123123123"]
        end

        it 'pulls numbers from multiple extract methods' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My mates digits: 078123123123")
            phone_book.extract_numbers("Also 078456456456")
            expect(phone_book.list).to eq ["078123123123", "078456456456"]
        end

        it 'pulls no number if there is not enough digits' do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("072843")
            expect(phone_book.list).to eq []
        end

        it 'does not save duplicate numbers' do 
            phone_book = PhoneBook.new
            phone_book.extract_numbers("George's number is 078123123123")
            phone_book.extract_numbers("Angela's number is 078123123123")
            expect(phone_book.list).to eq ["078123123123"]
        end
    end
end