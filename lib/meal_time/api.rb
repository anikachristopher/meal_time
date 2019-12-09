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
        response = HTTParty.get(ROOT_URL + "s=#{meal.strMeal}")
        @meal_info = response["meals"]
          @meal_info
        
    end
end
