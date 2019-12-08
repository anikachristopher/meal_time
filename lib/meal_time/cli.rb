class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!"
        puts ""
        sleep 1
        search 
        #menu
        category_selection 
        new_search
        thank_you
    end

    def search
        puts "Which entree would you like to choose from?:"
        input = gets.strip
        if input === "exit"
        thank_you
        else 
        MealTime::API.meal_category_db(input)
        MealTime::Categories.all.each.with_index do |c, i|
        puts "#{i + 1}. #{c.strCategory}"
        end
    end 
    end    

    # def menu 
    #     puts "This is a list of categories available for viewing:"
    #     puts ""
    #     sleep 1

    #     MealTime::API.meal_category_db(input)
    #     MealTime::Categories.all.each.with_index do |c, i|
    #         puts "#{i + 1}. #{c.strCategory}" #puts out new number and category name
    #         #binding.pry
    #     end
    #end

    def category_selection
        puts ""
        puts "Choose a category number to see more info!"
        puts ""
        input = gets.strip
        if input === exit
            thank_you
        end
        if (1..MealTime::Categories.all.size).include?(input.to_i)
        category = MealTime::Categories.all[input.to_i - 1]
        selected_category = category.strCategory
        description = category.strCategoryDescription
        puts "#{selected_category}: #{description}" #the category and it's description 
        else 
            puts "Sorry...I don't understand that selection, please choose another category number!"
            menu
        end
    end  

    def new_search
        puts ""
        puts "Would you like to choose another category number?"
        puts "Please enter yes or no."
        puts ""

        input = gets.strip
        if input === "exit"
            thank_you
        end
        case input
            when "yes"
            menu
            category_selection
            when "no"
            thank_you 
        else 
            puts "I do not understand that selection."
            category_selection
        end
    end    

    def thank_you
        puts "Thanks for visiting Meal Time CLI! Visit again soon!"
    end 
    
end