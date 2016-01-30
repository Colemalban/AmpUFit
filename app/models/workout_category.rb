class WorkoutCategory < ActiveRecord::Base
	has_many :workouts
	belongs_to :category
	validates_uniqueness_of :name	
end
