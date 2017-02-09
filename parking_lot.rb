require_relative "./car.rb"

class ParkingLot
  def initialize (filename)
    @cars_hash = {}
    cars = File.open(filename, "r")
    cars_array = cars.read.split("\n\n\n").map{|words| words.split}.map{|car| @cars_hash[car[0]] = car[1]}
    puts @cars_hash
  end 

  def list_cars
    @cars_hash.each do |key, value|
      key = Car.new(key, value)
      key.what_car
    end
  end
end

newLot = ParkingLot.new("cars_on_lot.txt")
newLot.list_cars