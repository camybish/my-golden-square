require 'io_exercise'

RSpec.describe Calculator do
    it "takes the first number away from the second" do 
    io = double :io
    expect(io).to receive(:puts).with("I will subtract two numbers: What shall they be?")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("And the second number?")
    expect(io).to receive(:gets).and_return("1")
    expect(io).to receive(:puts).with(2)


    calc = Calculator.new(io)
    calc.operation   
    end
end