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

list = ["Abs", "Barre", "Cardio and HIIT", "Lower Body", "Total Body", "Treadmill Workouts", 
"Upper Body", "Zumba"]


54.times do |i|
	 
	WorkoutCategory.create(name: list[rand(0..7)], category_id: rand(1..3))
end
 
