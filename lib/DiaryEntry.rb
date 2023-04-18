class DiaryEntry
    def initialize(title, contents) 
        @title = title
        @contents = contents
    end
  
    def title
      return @title.to_s 
    end
  
    def contents
      return @contents.to_s
    end
  
    def count_words
      return words.length
      
    end
  
    def reading_time(wpm) 
        fail "Reading time must be above 0" unless wpm.positive?
        return (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)         
        no_words_we_can_read = wpm * minutes
        word_list = words[0, no_words_we_can_read]
    end

    private
    def words
        return @contents.split(" ")
    end 
  end