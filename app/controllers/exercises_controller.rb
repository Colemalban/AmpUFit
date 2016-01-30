class ExercisesController < ApplicationController
	before_filter :authorize
	def new
		@exercise = Exercise.new
	end

	def create
	render plain: params[:article].inspect
	end
		

end
