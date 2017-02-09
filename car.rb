class Car
  def initialize(make, model)
    @make = make
    @model = model
  end

  def what_car
    puts "I'm a #{@make.capitalize}, #{@model.capitalize}!'"
  end
end