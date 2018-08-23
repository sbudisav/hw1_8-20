require "./drink.rb"

class  Wine < Drink
  attr_reader :varietal, :region, :year
  attr_writer :varietal, :region, :year

  def initialize(input_information)
    super(input_information)
    @varietal = input_information[:varietal]
    @region = input_information[:region]
    @year = input_information[:year]
  end

  def info
    super
    puts "This is a #{varietal} from #{region}, year #{year}"
  end
end
