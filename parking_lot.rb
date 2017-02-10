require_relative "./car.rb"


class ParkingLot
  
  def initialize (filename)
    @cars_from_file = File.open(filename, "r")
    @cars_hash = allocate_cars
    @cars_from_file.close
   end 

   def allocate_cars
     @cars_from_file.read.split("\n\n\n")
    .map{|words| words.split}
    .map{|car| Car.new(car[0],car[1])}
    .group_by{|car| car.make}
   end

  def list_cars
    @cars_hash.values.each do |car_group|
    car_group.each { |car| car.what_car }
    end
  end
end


newLot = ParkingLot.new("cars_on_lot.txt")
newLot.list_cars