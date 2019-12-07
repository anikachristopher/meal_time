class MealTime::CLI
    def call
        puts "Welcome to the Meals Database!"
        menu
    end

    def menu 
        puts "Which category of meals would you like to get more info on?"

        input = gets.strip

        MealTime::API.query
    end 


    https://www.themealdb.com/api/json/v1/1

end