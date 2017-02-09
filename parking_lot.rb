require_relative "car.rb"

class ParkingLot
  def initialize (filename)
    cars = File.read(filename, "r")
    cars_array = cars.read.split("\n\n\n").map{|words| words.split}
  end
  
end