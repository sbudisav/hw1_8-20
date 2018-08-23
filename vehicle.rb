module Movement
  def brake
    @speed = 0
  end
  def accelerate
    @speed += 10
  end
  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include Movement

  attr_reader :fuel_level, :make, :model
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel_level]
    @make = input_options[:make]
    @model = input_options[:model]
  end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include Movement

  def initialize(input_options)
    super()
    @gears = input_options[:gears]
    @type = input_options[:type]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

car_1 = Car.new(
                fuel_level:10,
                make: "Toyota",
                model: "Corolla"
                )
bike_1 = Bike.new(
                  gears: 3,
                  type: "Road"
                  )

p car_1
p bike_1