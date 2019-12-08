class MealTime::CLI
    
    def call
        puts "Welcome to the Meals Database!"
        menu
        user_selection #more_info
        another_option
        thank_you #for visitng
    end

    def menu 
        puts "Which category of meals would you like to get more info on?"

        input = gets.strip #removing spaces fron the front and end

        MealTime::API.query_meal_db(input)
    end 


    

end