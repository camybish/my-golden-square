require 'diary'
require 'diary_entry'

RSpec.describe "integration" do
    context "after adding some entries" do 
        it 'list out the entries added' do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end 

    describe "#count words" do 
        it "counts the words in all diary entries' contents" do 
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 5
        end
    end

    describe "#reading time behaviour" do 
        it "fails when reading time is 0" do 
            diary = Diary.new
            diary_entry = DiaryEntry.new("my title", "my contents")
            diary.add(diary_entry)
            expect { diary.reading_time(0) }.to raise_error("WPM must be positive")
        end

        it "calculates the reading time for all entries" do 
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 4
        end
    end

    describe "best reading time entry behaviour" do 
        context "when there's only one entry and it's readable in the time" do 
            it "returns that entry" do
                diary = Diary.new
                diary_entry = DiaryEntry.new("my title", "my contents 1")
                diary.add(diary_entry)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq diary_entry
            end
        end

        context "when we just have one entry and it is unreadable in the time" do 
            it "returns nil" do 
                diary = Diary.new
                diary_entry = DiaryEntry.new("my title", "my contents longer")
                diary.add(diary_entry)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq nil
            end
        end
    end
end 