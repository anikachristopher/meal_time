class MealTime::Meals

    attr_accessor :idMeal, :strMeal, :strMealThumb

    @@all = []

    def initialize(args)
        args.each do |k,v|
            self.send(("#{k}="), v)
        
        @@all << self
        end    

    end

    def self.all
        @@all
    end

end


#:strCategoryDescription