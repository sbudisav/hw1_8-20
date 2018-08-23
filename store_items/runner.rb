require "./drink.rb"
require "./wine.rb"


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
