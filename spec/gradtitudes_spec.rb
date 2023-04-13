require 'gratitudes'

RSpec.describe Gratitudes do
    it "inputs 'good health', outputs 'Be grateful for: good health'" do
        health = Gratitudes.new
        health.add("good health")
        expect(health.format).to eq "Be grateful for: good health"
    end
    it "inputs 'good health' and 'great friends', outputs 'Be grateful for: good health, great friends" do
        two = Gratitudes.new
        two.add("good health")
        two.add("great friends")
        expect(two.format).to eq "Be grateful for: good health, great friends"
    end
end