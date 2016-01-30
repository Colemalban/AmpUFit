class WorkoutCategory < ActiveRecord::Base
	has_many :exercises
	belongs_to :category
	validates_uniqueness_of :name	
end
