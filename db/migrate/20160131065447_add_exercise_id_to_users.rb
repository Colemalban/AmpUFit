class AddExerciseIdToUsers < ActiveRecord::Migration
  def change
   add_column :users, :exercise_id, :integer
	add_index :users, :exercise_id
add_column :exercises, :votes, :integer
	end
end
