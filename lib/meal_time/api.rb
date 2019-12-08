class MealTime::API

    BASE_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?'
    ROOT_URL= 'https://www.themealdb.com/api/json/v1/1/search.php?'
    SOUP_URL= 'https://www.themealdb.com/api/json/v1/1/search.php?s=Red%20Peas%20Soup'

    def self.meal_category_db(query)
        response = HTTParty.get(BASE_URL + "c=#{query}")
        #binding.pry 
        response["meals"].each do |meals_hash| 
        MealTime::Meals.new(meals_hash)
        #MealTime::Categories.new(category)
        
        
        end

        #this class will iterate through list of info pulled from the API list of categories
        #we will initialize a category object
    end

    #def self.category_info(category_instance)
     #   category_info_response = HTTParty.get(BASE_URL) 
      #  category_info_response
    #end 

    def self.get_specific_meal_db(meal)
        if !meal.strMeal
        #binding.pry
        response = HTTParty.get(ROOT_URL + "s=#{meal}")
        MealTime::Meals.more_info(response)
    end
end
    # def self.category_meals(category_instance)
    #     #binding.pry
    #     category_meals_response = HTTParty.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category_instance}")   
    # end

   #response = HTTParty.get(ROOT_URL + "s=#{meal}")

end