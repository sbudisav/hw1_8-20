# wine_1 = {varietal: "Montepulciano" ,region: "Italy", year: 2015}
# wine_2 = {varietal: "Gamay" ,region: "France", year:2014}
# wine_3 = {"varietal" => "Vinho Verde", "region" => "Portugal", "Year" => 2016}

class Wine
  def initialize(in_varietal, in_region, in_year)
    @varietal = in_varietal
    @region = in_region
    @year = in_year
  end
  def info
    puts "This is a #{varietal} from #{region}, year #{year}"
  end
  def varietal 
    @varietal
  end
  def region
    @region
  end
  def year
    @year
  end
end

wine_1 = Wine.new("Pino", "CA", 2015)
wine_1.info

