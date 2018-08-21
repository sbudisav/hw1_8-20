# wine_1 = {varietal: "Montepulciano" ,region: "Italy", year: 2015}
# wine_2 = {varietal: "Gamay" ,region: "France", year:2014}
# wine_3 = {"varietal" => "Vinho Verde", "region" => "Portugal", "Year" => 2016}

class Wine
  attr_reader :varietal, :region, :year
  attr_writer :varietal, :region, :year

  def initialize(input_information)
    @varietal = input_information[:varietal]
    @region = input_information[:region]
    @year =input_information[:year]
  end
  def info
    puts "This is a #{varietal} from #{region}, year #{year}"
  end
end

#can input into class with a hash
#with js writing ("varietal =>" vs varietal:)
#when inputting hashes, don't need {}
wine_1 = Wine.new(varietal:"Pino", region:"CA", year:2015)
wine_1.info
wine_1.varietal = "Gamay"
wine_1.info

