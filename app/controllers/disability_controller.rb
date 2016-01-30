class DisabilityController < ApplicationController
  def show
  
	@workoutlist = Workout.all
	end
	def showother
		@workoutlist = Workout.where(workout_categories_id: 3, )
	end
	def showarms
		@workoutlist = Workout.where(workout_categories_id: 2)
	end
	def showlegs
		@workoutlist_cardio = Workout.where(workout_categories_id: 1, focus_area_id: 1)
		@workoutlist_weights = Workout.where(workout_categories_id: 1, focus_area_id: 2 )
		@workoutlist_LIS = Workout.where(workout_categories_id: 1, focus_area_id: 3)

	end

	def index
	end
end
