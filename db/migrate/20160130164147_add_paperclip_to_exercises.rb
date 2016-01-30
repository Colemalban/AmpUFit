class AddPaperclipToExercises < ActiveRecord::Migration
  def change
 	add_attachment :exercises, :image
	 end
end
