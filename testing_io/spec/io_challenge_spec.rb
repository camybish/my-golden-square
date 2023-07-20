require 'io_challenge'

RSpec.describe do 
    it 'repeats a string 10 times' do 
        io = double :io
        expect(io).to receive(:puts).with("I will repeat your string many many times!\n (Enter a string)")
        expect(io).to receive(:gets).and_return("ok")
        expect(io).to receive(:puts).with("and how many times?")
        expect(io).to receive(:gets).and_return("10")
        expect(io).to receive(:puts).with("okokokokokokokokokok")


        repeater = StringRepeater.new(io)
        repeater.more
    end 
end
