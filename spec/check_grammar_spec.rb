require 'check_grammar'

RSpec.describe 'check_grammar method' do 
    context 'given an empty string' do
        it 'fails' do
            expect { check_grammar("") }.to raise_error "Not a sentence."
        end
    end

    context 'given a non-empty string' do
        it 'returns true if starting with capital and ending with full stop' do 
            expect(check_grammar("Hello, I am Cam.")).to eq true
        end

        it 'returns true if first word is all caps and ends with full stop' do
            expect(check_grammar("HELLO, I am Cam.")).to eq true
        end

        it 'returns false if string ends with comma' do 
            expect(check_grammar("Hello, I am Cam,")).to eq false
        end

        it "returns false if string doesn't start with capital letter" do
            expect(check_grammar("hello, I am Cam.")).to eq false
        end

        it 'returns true if string starts with capital letter and ends with question mark' do
            expect(check_grammar("Hello, I am Cam?")).to eq true
        end

        it 'returns true if string starts with capital letter and ends with exclamation mark' do
            expect(check_grammar("Hello, I am Cam!")).to eq true
        end

    end
end