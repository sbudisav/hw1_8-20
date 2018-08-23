class Drink
  attr_reader :what_is, :shelf_life, :alcoholic

  def initialize(input_information)
    @shelf_life = input_information[:shelf_life]
    @alcoholic = input_information[:alcoholic]
    @what_is = input_information[:what_is]
  end
  
  def info
    puts "This #{what_is} will last #{shelf_life} before spoiling."
    if alcoholic == true
      puts "It is alcoholic"
    else 
      puts "It is not alcoholic"
    end
  end
end