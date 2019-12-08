class MealTime::Categories
#this class will initialize with the category attributes
#it will save all instances of itself in the @@all class
#need a mtehod to read the @@all class
attr_accessor :idCategory, :strCategory, :strCategoryDescription

@@all = []

def initialize(args)
    args.each do |k,v|
        self.send(("#{k}="), v) if self.respond_to?(k)
    
    @@all << self unless @@all.include?(self)
    end    

end

def self.all
    @@all
end


end


