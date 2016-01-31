class FixIt < ActiveRecord::Migration
  def change
	add_column :exercises,:workout_category_id,:integer
  end
end
