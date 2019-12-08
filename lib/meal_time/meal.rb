class MealTime::Meals

    attr_accessor :strMeal, :strMealThumb, :idMeal

    @@all = []

    def initialize(args)
        args.each do |k,v|
            self.send("#{k}=", v)
        end
        @@all << self
    end

    def self.all
        @@all
    end

end