require "httparty"
require "pry"
require "json"
require "rest-client"
require "colorize"


require_relative "./meal_time/version"
require_relative "./meal_time/api"
require_relative "./meal_time/cli"
#require_relative "./meal_time/meal"
require_relative "./meal_time/meals"


module MealTime
  class Error < StandardError; end
  # Your code goes here...
end
