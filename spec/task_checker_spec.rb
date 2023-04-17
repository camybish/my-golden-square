require 'task_checker'

RSpec.describe 'task_checker method' do 
    it 'returns "No text to check" if string is empty' do
        expect { task_checker("") }.to raise_error "No text to check."
    end
    
    it 'returns true if "#TODO" is included' do
        expect(task_checker("Hello, I am Cam. This is my #TODO list: ")).to eq true
    end 

    it 'returns false if "#TODO" is not included' do
        expect(task_checker("Hello, I am Cam. I've done everything I need to do")).to eq false
    end
end
