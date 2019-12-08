class MealTime::CLI
    
    def call
        puts ""
        puts "Welcome to the Meals Database!"
        puts "There are 3 categories to choose from:"
        menu
        user_selection #more_info
        another_option
        thank_you #for visitng
    end

    def menu 
        puts "Which category of meals would you like to get more info on:?"

        category = gets.strip #removing spaces fron the front and end

        MealTime::API.meal_db
       

        MealTime::Meals.all.each_with_index do |c, i|
            puts "#{i + 1}".
        end

     def user_selection
        input = gets.strip.downcase
        if input = exit   
        else 
            puts "Sorry, this is an invalid option. Please make another choice!"
            menu
        end
    end 


    

end