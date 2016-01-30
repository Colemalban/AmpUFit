class WorkoutCategory < ActiveRecord::Base
	has_many :workouts
	belongs_to :category
	
end
