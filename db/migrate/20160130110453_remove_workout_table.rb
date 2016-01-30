class RemoveWorkoutTable < ActiveRecord::Migration
  def change
  	drop_table :workouts
  end
end
