require 'car'

describe 'Car' do
  describe 'attributes' do
    it "should allow read and write to :make" do
      car = Car.new
      car.make = 'Honda'
      expect(car.make).to eq('Honda')
    end

    it "should allow read and write to :year" do
      car = Car.new
      car.year = 2022
      expect(car.year).to eq(2022)
    end

    it "should allow read and write to :color" do
      car = Car.new
      car.color = "Black"
      expect(car.color).to eq('Black')
    end

    it "should allow reading for :wheels" do
      car = Car.new
      expect(car.wheels).to eq(4)
    end

    it "should allow writing to :doors"
  end

  describe '.colors' do
    it "should return an array of colors" do
      colors = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(colors)
    end
  end

  describe '#full_name' do
    it "should return a string with the expected format" do
      car = Car.new(make: "Honda", year: "2022", color: "white")
      expect(car.full_name).to eq('2022 Honda (white)')
    end

    context "when initialized with no arguments" do
      it "should return a string with default values" do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end
end
