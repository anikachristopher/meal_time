class MealTime::Meals

    attr_accessor :idCategory, :strCategory, :strCategoryThumb, :strCategoryDescription

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