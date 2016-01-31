class WorkoutCategory < ActiveRecord::Base
	has_many :exercises
	belongs_to :category
		
	validates :name,presence: true, length:{minimum:4}
end
