class MealTime::CLI
    
    def call
        puts ""
        puts "Hi! Welcome to the Meals Database!"
        sleep 1
        menu
        category_selection 
        next_option
        thank_you #for visitng
    end

    def menu 
        puts "This is a list of categories available for viewing:"

        category = gets.strip #removing spaces fron the front and end

        MealTime::API.meal_db
        MealTime::
    end

    def category_selection

       

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
    


    

end