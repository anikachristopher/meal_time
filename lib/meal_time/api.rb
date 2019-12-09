class MealTime::API

    BASE_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?'
    ROOT_URL= 'https://www.themealdb.com/api/json/v1/1/search.php?'
    

    def self.meal_category_db(query)
        response = HTTParty.get(BASE_URL + "c=#{query}")
        response["meals"].each do |meals_hash| 
        MealTime::Meals.new(meals_hash)
        end

    end

    def self.get_specific_meal_db(meal)
        response = HTTParty.get(ROOT_URL + "s=#{@strMeal}")
        # MealTime::Meals.more_info(response)
        # if !meal.strMeal
        @meal_info = response["meals"]
          @meal_info
        
          #repeat for each attribute and save to their own InsVar and then create new instances of the meal class and pass them in as the arguments
            
          #meal_time = meals.new and pass in other attributes created
    end
end

# response["meals"]
# 