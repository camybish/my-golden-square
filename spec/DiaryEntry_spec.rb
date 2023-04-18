require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it 'constructs' do 
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end

    describe '#count_words' do
        it 'returns the number of words in the contents' do 
            diary_entry = DiaryEntry.new("my_title", "my contents here")
            expect(diary_entry.count_words).to eq 3
        end 

        it 'returns zero when the contents is empty' do 
            diary_entry = DiaryEntry.new("my_title","")
            expect(diary_entry.count_words).to eq 0
        end 
    end

    describe '#reading_time' do
        context 'given a wpm of some sensible number(40000)' do 
            it 'returns the ceiling of the number of minutes it takes to read the contents' do
                diary_entry = DiaryEntry.new("my_title","one" * 550)
                expect(diary_entry.reading_time(200)).to eq 3
            end
        end

        context 'given a wpm of 0' do 
            it 'fails' do
                diary_entry = DiaryEntry.new("my_title","one two three")
                expect { diary_entry.reading_time(0) }.to raise_error "Reading time must be above 0"
            end
        end
    end

# `wpm` is an integer representing the number
# of words the user can read per minute
# `minutes` is an integer representing the 
# number of minutes the user has to read
# Returns a string with a chunk of the contents that the user could read
# in the given number of minutes.
# If called again, `reading_chunk` should return the next chunk, skipping
# what has already been read, until the contents is fully read.
# The next call after that it should restart from the beginning.


    describe '#reading_chunk' do
        context 'with a text readable within the given minutes' do 
            it 'returns the full contents' do 
                diary_entry = DiaryEntry.new("my_title", "one two three")
                chunk = diary_entry.reading_chunk(2, 1)
                expect(chunk).to eq "one two"
            end 
        end
    end
end