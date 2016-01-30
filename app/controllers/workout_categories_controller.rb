class WorkoutCategoriesController < ApplicationController
	before_filter :authorize
	def new
		@workout_category=WorkoutCategory.new
	end
	def create
		@category=Category.find(params[:category_id])
		@workout_category=@category.workout_categories.create(workout_category_params)
		redirect_to category_path(@category)
	end
	def workout_category_params
		params.require(:workout_category).permit(:name,:category_id)
	end
end

