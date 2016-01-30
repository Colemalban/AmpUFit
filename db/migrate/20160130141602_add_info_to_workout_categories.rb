class AddInfoToWorkoutCategories < ActiveRecord::Migration
  def change
  	add_foreign_key :workout_categories,:exercises

  end
end
