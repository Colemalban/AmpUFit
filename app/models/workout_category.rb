class WorkoutCategory < ActiveRecord::Base
	has_many :exercises
	belongs_to :category
	validates_uniqueness_of :name	
	validates :name,presence: true, length:{minimum:4}
end
