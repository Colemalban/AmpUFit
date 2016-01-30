class FixForeignKeys < ActiveRecord::Migration
  def change
  	add_column :workout_categories, :category_id, :integer
	add_column :workouts, :workout_category_id, :integer
  end
end
