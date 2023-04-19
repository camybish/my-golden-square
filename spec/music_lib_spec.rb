require 'music_lib'

RSpec.describe MusicLibrary do 
    context '#add_track' do
        it 'puts empty library' do
            library = MusicLibrary.new
            expect(library.list).to eq []
        end
    end
    context '#add_track' do 
        it 'takes a song and artist and returns it' do 
            library = MusicLibrary.new
            library.add_track("the police","roxanne")
            expect(library.list).to eq ["the police - roxanne"]
        end

        it 'takes multiple songs and returns them' do
            library = MusicLibrary.new
            library.add_track("the police","roxanne")
            library.add_track("crazy frog","bing bong")
            expect(library.list).to eq ["the police - roxanne","crazy frog - bing bong"]
        end

        it 'returns nothing if artist or song is not added' do
            library = MusicLibrary.new
            expect { library.add_track("crazy frog", "") }.to raise_error "Missing artist or song"
        end
    end
end
