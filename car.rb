class Car
  attr_reader :color
  attr_reader :year
  attr_reader :make
  attr_reader :model

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