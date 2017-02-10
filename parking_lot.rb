require_relative "./car.rb"
require 'pry'

class ParkingLot
  def initialize (filename)
    @cars_from_file = File.open(filename, "r")
    @cars_hash = @cars_from_file.read.split("\n\n\n")
    .map{|words| words.split}
    .map{|car| Car.new(car[0],car[1])}
    .group_by{|car| car.make}
    @cars_from_file.close
   end 

  def list_cars
    @cars_hash.each do |key, value| 
      i = 0
      value.count.times do
      value[i].what_car
      i+= 1
      end
    end
  end
end

newLot = ParkingLot.new("cars_on_lot.txt")
newLot.list_cars