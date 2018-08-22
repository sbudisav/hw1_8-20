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

juice_1 = Drink.new(
                    what_is: "Apple Juice",
                    shelf_life: "1 year",
                    alcoholic: false
                    )

wine_1 = Wine.new(
                  what_is: "Wine",
                  varietal: "Pino Noir", 
                  region: "CA", 
                  year: 2015,
                  shelf_life: "4 years",
                  alcoholic: true
                  )
wine_2 = Wine.new(
                  what_is: "Wine",
                  varietal: "Gamay" ,
                  region: "France", 
                  year:2014,
                  shelf_life: "5 years",
                  alcoholic: true
                  )
juice_1.info
puts
wine_1.info
puts 
wine_2.info


