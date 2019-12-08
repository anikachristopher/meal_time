class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!"
        sleep 1
        menu
        category_selection 
        new_search
        thank_you
    end

    def menu 
        puts "This is a list of categories available for viewing:"
        sleep 3

        MealTime::API.meal_category_db
        MealTime::Categories.all.each.with_index do |c, i|
            puts "#{i + 1}. #{c.strCategory}" #puts out new number and category name
            #binding.pry
        end
    end

    def category_selection
        puts "Choose a category number to see more info!"
        input = gets.strip
        if (1..MealTime::Categories.all.size).include?(input.to_i)
            category = MealTime::Categories.all[input.to_i - 1]

        selected_category = category.strCategory
        description = category.strCategoryDescription
        puts "#{selected_category}: #{description}" #the category and it's description 
        else 
            puts "I don't understand that selection. Please choose another category number."
            menu
        end
    end  

    def new_search
        puts "Would you like to choose another category number? Please enter 'Yes' or 'No'."
            input = gets.chomp.downcase
            case input
            when input == "Yes"
                menu
            when input == "No"
            thank_you 
        else 
            puts "I do not understand that selection. Please choose 'Yes' or 'No'."
            thank_you
        end
    end    

    def thank_you
        puts "Thanks for visiting Meal Time CLI! Visit again soon!"
    end 
    
end