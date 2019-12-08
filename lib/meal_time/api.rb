class MealTime::API

    CHK_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Chicken'
    SEAF_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'
    BEEF_URL= 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef'
    API_KEY = '1'
    
    
    
    def self.chicken_meals_db(query)
        response = HTTParty.get(CHK_URL)
    end

    def seafood_meals_db(query)
        response = HTTParty.get(SEAF_URL)
    end

    def beef_meals_db(query)
        response = HTTParty.get(BEEF_URL)
    end

end