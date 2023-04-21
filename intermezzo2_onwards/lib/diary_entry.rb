class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def count_words
        return 0 if @contents.empty?
        return @contents.split(" ").length
    end

    def reading_time(wpm)
        return (count_words / wpm.to_f).ceil
    end

    def reading_chunk(wpm, minutes)
    end
end