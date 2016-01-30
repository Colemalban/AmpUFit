class AddNameToWorkoutCategory < ActiveRecord::Migration
  def change
  	add_column :workout_categories, :name, :string
  end
end
