class MusicLibrary
    def initialize
        @library = []
    end


    def add_track(artist, song)
        fail "Missing artist or song" if (artist.empty? || song.empty?)
        track = artist + " - " + song
        @library.append(track)
    end

    def list
        return @library
    end

end




=begin

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.



=end