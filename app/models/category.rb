class Category < ActiveRecord::Base
	has_many :workout_categories
	has_many :workouts, through: :workout_categories
end
