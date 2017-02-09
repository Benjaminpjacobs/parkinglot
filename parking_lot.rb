require_relative "car.rb"

class ParkingLot
  def initialize (filename)
    cars_hash = {}
    cars = File.open(filename, "r")
    cars_array = cars.read.split("\n\n\n").map{|words| words.split}.map{|car| cars_hash[car[0]] = car[1]}
    puts cars_hash
  end
  
end