class MealTime::Meals

attr_accessor :idMeal, :strMeal, :strInstructions, :strArea, :strCategory


@@all = []

    def initialize(args)
        more_info(args)
    
         @@all << self 

    end 

    def self.all
        @@all
    end

    def more_info(args)
        args.each do |k,v|
        self.send(("#{k}="), v) if self.respond_to?(k)
    end
    end

end


