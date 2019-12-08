class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!"
        sleep 1
        menu
        category_selection 
        # next_option
        # thank_you #for visitng
    end

    def menu 
        puts "This is a list of categories available for viewing:"

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
            puts "Invalid Option. Please choose another category number."
            menu
        end
    end  

    #     MealTime::Meals.all.each_with_index do |c, i|
    #         puts "#{i + 1}".
    #     end

    #  def user_selection
    #     input = gets.strip.downcase
    #     if input = exit   
    #     else 
    #         puts "Sorry, this is an invalid option. Please make another choice!"
    #         menu
    
end    


    
