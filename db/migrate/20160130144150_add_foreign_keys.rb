class AddForeignKeys < ActiveRecord::Migration
  def change
  	add_column :categories, :workout_category_id, :integer
	add_column :workout_categories, :workout_id, :integer
  end
end
