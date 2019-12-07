require "httparty"
require "pry"
require "json"
require "rest-client"


require_relative "./meal_time/version"
require_relative "./meal_time/api"
require_relative "./meal_time/cli"
require_relative "./meal_time/meal"


module MealTime
  class Error < StandardError; end
  # Your code goes here...
end
