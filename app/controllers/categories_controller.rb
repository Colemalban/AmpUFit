class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def about
	end
	def show
	end
end
