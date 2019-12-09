class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!".colorize(:green)
        puts ""
        sleep 1
        search 
       
    end

    def search
        puts "Which category of entree would you like to choose from: Beef, Pork or Seafood?:".colorize(:blue)
        input = gets.strip.capitalize
        if input === "Exit"
            thank_you
        elsif input === "Beef" || input === "Pork" || input === "Seafood"
            MealTime::API.meal_category_db(input)
            MealTime::Meals.all.each.with_index do |m, i|
            puts "#{i + 1}. #{m.strMeal}"
            end
            category_selection
        else 
            puts "Sorry...I don't understand that selection, please choose another category!".colorize(:red)  
            search
        end  
    end    

    def meal_info(meal_info)
        meal = MealTime::API.get_specific_meal_db(meal_info)
            
        puts ""
        puts "Meal ID: #{meal[0]["idMeal"]}".colorize(:blue)
        puts""
        puts "Meal Name: #{meal[0]["strMeal"]}".colorize(:magenta)
        puts ""
        puts "Area: #{meal[0]["strArea"]}".colorize(:red)
        puts ""
        puts "Category: #{meal[0]["strCategory"]}" .colorize(:cyan)
        puts ""
        puts "Instructions: #{meal[0]["strInstructions"]}".colorize(:green)
        puts ""
        

    end

    def category_selection
        puts ""
        puts "Choose a number to see more info!".colorize(:yellow)
        puts ""
        input = gets.strip
        
        if (1..MealTime::Meals.all.size).include?(input.to_i)
            meal = MealTime::Meals.all[input.to_i - 1]
            meal_info(meal)
            new_search
        else 
            puts "Sorry...I don't understand that selection, please choose another category!".colorize(:red)
            category_selection
        end    
    end  

    def new_search
        puts ""
        puts "Would you like to choose another category?".colorize(:red)
        puts "Please enter yes or no.".colorize(:red)
        puts ""
        options

        input = gets.strip.downcase

        case input
            when "yes"
            MealTime::Meals.all.clear   
            search
            when "no"
            thank_you
            when "exit"
            thank_you

        else 
            puts "I do not understand that selection.".colorize(:red)
            puts "Type yes or no.".colorize(:red)
            new_search
        end
        exit
    end   

    def options
        puts ""
        puts "Or type exit to exit".colorize(:red)
    end
    def thank_you
        puts "Thanks for visiting Meal Time CLI! Visit again soon!".colorize(:green)
        exit
    end 
    
end
