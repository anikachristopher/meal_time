class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!"
        puts ""
        sleep 1
        search 
        category_selection 
        new_search
        thank_you
    end

    def search
        puts "Which category of entree would you like to choose from: Beef, Pork or Seafood?:"
        input = gets.strip
        if input === "exit"
        thank_you
        else 
        MealTime::API.meal_category_db(input)
        MealTime::Meals.all.each.with_index do |m, i|
        puts "#{i + 1}. #{m.strMeal}"
        end
    end 
    end    



    def category_selection
        puts ""
        puts "Choose a number to see more info!"
        puts ""
        input = gets.strip
    
        # if input === exit
        #     thank_you
        # end
        
        if (1..MealTime::Meals.all.size).include?(input.to_i)

        meal = MealTime::Meals.all[input.to_i - 1]
        MealTime::API.get_specific_meal_db(meal)

        puts ""
        puts "idMeal: #{meal.idMeal}" 
        puts "strMeal: #{meal.strMeal}" 
        puts "strCategory: #{meal.strCategory}" 
        puts "strInstructions: #{meal.strInstructions}" 
        puts "strArea: #{meal.strArea}" #creating the objects
    
       
        else 
            puts "Sorry...I don't understand that selection, please choose another category!"
    
         end
    
    end  

    def new_search
        puts ""
        puts "Would you like to choose another category?"
        puts "Please enter yes or no."
        puts ""

        input = gets.strip
        if input === "exit"
            thank_you
        end
        case input
            when "yes"
            MealTime::Meals.all.clear   
            search
            category_selection
            new_search
            when "no"

        else 
            puts "I do not understand that selection."
            puts "Type yes or no."
        end
    end    

    def thank_you
        puts "Thanks for visiting Meal Time CLI! Visit again soon!"
    end 
    
end