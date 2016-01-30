# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do |i|
	if i == 0
		Category.create(id: i+1, name: "legs")
	elsif i == 1
		Category.create(id:i+1, name: "arms")
	else 
		Category.create(id:i+1, name: "other")
	end
end

leglist = ["Stretches", "Leg and Hip Strengthening", "Stomach Strengthening", "Arm Exercises", "Balance Exercises"]
armslist = ["Abdominal Strengthening", "Lower Body Strengthening"]
list = ["Abs", "Barre", "Cardio and HIIT", "Lower Body", "Total Body", "Treadmill Workouts", 
"Upper Body", "Zumba"]


leglist.each do |s|

	WorkoutCategory.create(name: s, category_id: 1)
end

armslist.each do |s|

	WorkoutCategory.create(name: s, category_id: 2)
end


10.times do |i|
	 
	WorkoutCategory.create(name: list[rand(0..7)], category_id: 3)
end

z = Exercise.create(name: "Calf Stretch", difficulty: "easy", workout_category_id: 1)
z.image = File.new("#{Rails.root}/public/Band_Stretch.png")
puts("Hey i worked")
z = Exercise.create(name: "Hip Abduction", difficulty: "medium", workout_category_id: 2)
z.image = File.new("#{Rails.root}/public/hip_abduct.jpg")
