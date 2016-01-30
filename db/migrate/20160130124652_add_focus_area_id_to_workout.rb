class AddFocusAreaIdToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :focus_area_id, :integer
  end
end
