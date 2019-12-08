class MealTime::API

    BASE_URL= 'https://www.themealdb.com/api/json/v1/1/categories.php' 
    # CHK_URL 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Chicken'
    # SEAF_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'
    # BEEF_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef'
    
    
    def self.meal_category_db
        response = HTTParty.get(BASE_URL)
        response["categories"].each do |category| 
        MealTime::Categories.new(category)
        #MealTime::Categories.new(category)
        #binding.pry
        
        end

        #this class will iterate through list of info pulled from the API list of categories
        #we will initialize a category object
    end

    def self.category_info(category_instance)
        
    end

    # def seafood_meals_db(query)
    #     response = HTTParty.get(SEAF_URL)
    # end

    # def beef_meals_db(query)
    #     response = HTTParty.get(BEEF_URL)
    # end

end