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
        if !meal.strMeal
        #binding.pry
        response = HTTParty.get(ROOT_URL + "s=#{meal}")
        MealTime::Meals.more_info(response)
    end
end


end