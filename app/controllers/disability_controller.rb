class DisabilityController < ApplicationController
  def show
  
	@workoutlist = Workout.all
	end
end
