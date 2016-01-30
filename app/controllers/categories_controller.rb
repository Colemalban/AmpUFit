class CategoriesController < ApplicationController
	
	def index
		@categories = Category.all
	end
	def about
	end
	def show
		@workout = Category.find(params[:id])
		@workout_categories = @workout.workout_categories
	end
end
