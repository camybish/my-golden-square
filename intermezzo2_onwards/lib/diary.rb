class Diary
    def initialize
        @entries = []
    end

    def add(entry)
        @entries << entry
    end

    def all
        return @entries 
    end

    def count_words
        return @entries.sum(&:count_words)
    end

    def reading_time(wpm)
        fail "WPM must be positive" unless wpm > 0 
        return @entries.sum do |entry|
            entry.reading_time(wpm)
        end
    end

    def find_best_entry_for_reading_time(wpm, minutes)
        readable_entries = @entries.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
        return readable_entries.first
    end
end