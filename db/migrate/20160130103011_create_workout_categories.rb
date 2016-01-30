class CreateWorkoutCategories < ActiveRecord::Migration
  def change
    create_table :workout_categories do |t|

      t.timestamps null: false
    end
  end
end
