class ExercisesController < ApplicationController
	before_filter :authorize
	def new
		@exercise=Exercise.new
		@workout_category=WorkoutCategory.find(params[:workout_category_id])
	end
	def show
		@exercise = Exercise.find(params[:id])
	end

	def create
		@category=Category.find(params[:category_id])
		@exercise=WorkoutCategory.find(params[:workout_category_id]).exercises.build(exercise_params)
		if @exercise.save
			redirect_to category_path(@category)
		else
			redirect_to new_category_workout_category_exercise_path(@category,@workout_category)
		end
	end
	private
	def exercise_params
		params.require(:exercise).permit(:name,:image,:difficulty,:category_id,:workout_category_id)
	end
		

end
