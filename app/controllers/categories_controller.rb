class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def about
	end
	def show
		@workout = Category.find(params[:id])
		@workout_categories = WorkoutCategory.where(category_id:params[:id])
	end
end
