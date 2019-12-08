class MealTime::API

    BASE_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?'
    
    
    def self.meal_category_db(query)
        response = HTTParty.get(BASE_URL + "c=#{query}")
        response["meals"].each do |meals_hash| 
        MealTime::Meals.new(meals_hash)
        #MealTime::Categories.new(category)
        #binding.pry
        
        end

        #this class will iterate through list of info pulled from the API list of categories
        #we will initialize a category object
    end

    #def self.category_info(category_instance)
     #   category_info_response = HTTParty.get(BASE_URL) 
      #  category_info_response
    #end 

    def self.category_meals(category_instance)
        #binding.pry
        category_meals_response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category_instance}")   
    end

   

end