class Category < ActiveRecord::Base
	has_many :workout_categories
end
