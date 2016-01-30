class DisabilityController < ApplicationController
  def show
  
	@workoutlist = Workout.all
	end
	def index
	end
end
