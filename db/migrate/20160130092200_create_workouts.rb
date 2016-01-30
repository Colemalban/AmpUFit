class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :workout_id
      t.string :description
      t.references :disability, index: true, foreign_key: true
      t.string :info

      t.timestamps null: false
    end
  end
end
