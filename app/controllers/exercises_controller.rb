class ExercisesController < ApplicationController
	before_filter :authorize
	def new
		@exercise=Exercise.new
		@workout_category=WorkoutCategory.find(params[:workout_category_id])
	end
	def show
		@exercise = Exercise.find(params[:id])
	end

	def down
		@exercise = Exercise.find(params[:exercise_id])
		@exercise.votes = @exercise.votes - 1
		@exercise.save
		redirect_to category_workout_category_exercise_path(:category_id,:workout_category_id,@exercise) 
	end
	def up
		@exercise = Exercise.find(params[:exercise_id])
		@exercise.votes = @exercise.votes + 1
		@exercise.save
		redirect_to category_workout_category_exercise_path(:category_id,:workout_category_id,@exercise) 
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
		params.require(:exercise).permit(:name,:image,:difficulty,:equipment,:category_id,:workout_category_id)
	end
		

end
