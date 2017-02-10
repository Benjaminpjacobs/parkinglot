class Car
  attr_reader :color, :year, :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def add_year(year)
    @year = year
  end
  
  def add_color(color)
    @color = color
  end
  
  def what_car
    puts "#{@make}: #{@model}"
  end
end