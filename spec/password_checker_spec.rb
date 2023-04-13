require 'password_checker'

RSpec.describe PasswordChecker do
    it 'returns true when password is 8 characters or longer' do
        good_pw = PasswordChecker.new
        expect(good_pw.check("password123")).to eq true 
    end
    it 'returns false when password is shorter than 8 characters' do
        bad_pw = PasswordChecker.new
        expect { bad_pw.check("london") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
