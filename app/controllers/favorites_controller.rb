class FavoritesController < ApplicationController
	before_filter :authorize
	def create
		@favorite=Favorite.new(favorite_params)
		@exercise = Exercise.find(params[:exercise_id])
		@favorite.user_id=@current_user.id
		if @favorite.save
			redirect_to category_workout_category_exercise_path(:category_id,:workout_category_id,@exercise)

		else
			redirect_to root_path
		end
	end
	def favorite_params
		params.permit(:user_id,:exercise_id)
	end
end
