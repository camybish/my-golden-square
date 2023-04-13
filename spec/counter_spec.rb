require 'counter'

RSpec.describe Counter do 
    it "counts the number of magpies seen today, returns 2" do
        magpies = Counter.new
        magpies.add(2)
        result = magpies.report()
        expect(result).to eq "Counted to 2 so far."
    end

    it "counts the number of yellow cars seen today, return 95" do
        yellow_cars = Counter.new
        yellow_cars.add(95)
        result = yellow_cars.report()
        expect(result).to eq "Counted to 95 so far."
    end

    it "counts the number of honeys in my pad, returns 0" do
        potential_suitors = Counter.new
        potential_suitors.add(0)
        result = potential_suitors.report()
        expect(result).to eq "Counted to 0 so far."
    end
end