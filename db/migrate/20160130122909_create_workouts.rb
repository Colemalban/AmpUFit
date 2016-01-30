class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.references :workout_categories, index: true, foreign_key: true
      t.attachment :image

      t.timestamps null: false
    end
  end
end