class RemoveDudTables < ActiveRecord::Migration
  def change
  	drop_table :disabilities
	drop_table :friendables
	drop_table :friendships
	drop_table :user_friendships
	drop_table :workouts
  end
end
