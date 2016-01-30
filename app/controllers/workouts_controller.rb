class WorkoutsController < ApplicationController
	before_filter :authorize
	def new
		@workout=Workout.new
	end
end
