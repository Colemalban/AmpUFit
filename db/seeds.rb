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

z = Exercise.create(name: "Bridge", difficulty: "1. Lie on your back with a towel roll
under the calf of your amputated leg.
Tighten the muscles in your upper
leg to keep that knee straight.\n
2. Push down into the towel roll and lift
your buttocks up while keeping your stomach muscles tight.\n
3. Hold 5 seconds and then relax and repeat.", workout_category_id: 3)
z = Exercise.create(name: "Knee to Chest", difficulty: "1. Kneel on a mat or pad to cushion
your knees. Place a pillow under
your foot and lower leg.
2. Get up on your hands and knees.
Tuck your chin down towards your
chest while pulling your knee up
towards your chest, causing your
back to round up.
3. Slowly raise your head and
straighten your knee out and back
while flattening your back
4. Repeat with the other knee.", workout_category_id: 2)
z = Exercise.create(name: "Advanced Hip Extension on Back", difficulty: "1. Lie on your back. Place a rolled towel under the end of your
amputated limb. Lift your other leg up.\n
2. Push down into the towel, and lift your hips off the floor or table.
Hold and then lower your hips down\n
This exercise can be done with a prosthesis as well.", workout_category_id: 2)
z = Exercise.create(name: "Limb Lift", difficulty: "1. Kneel down on a mat or pad to
cushion your knees. Place a pillow
under your foot and lower leg.
2. Get up and balance yourself on your
hands and knees.
3. Lift one arm and hold, then down.
4. Lift the other arm and hold, then down.
5. Lift your amputated leg and hold,
then down.
6. Lift your sound leg and hold, then
down.
7. Repeat movements with both arms
and both legs 10 times.", workout_category_id: 5)
z = Exercise.create(name: "Arm and Leg Lift", difficulty: "1. Kneel down on a mat or pad to cushion your knees. Place a pillow
under your foot and lower leg.
2. Get up and balance yourself on your hands and knees.
3. Lift one arm and the opposite leg,
keeping your neck straight with
your back. Hold the position, then
down.
4. Lift the other arm and the opposite
leg. Hold and then down.", workout_category_id: 2)
z = Exercise.create(name: "Bridging", difficulty: "1. Lie on your back with your sound knee bent and your foot flat on the
floor. Your amputated leg should be flat on the floor.\n
2. Keep your amputated knee straight and lift you hips, pulling your
belly button in and up slightly, while tightening your buttock
muscles", workout_category_id: 3)
z = Exercise.create(name: "Shoulder Push Ups", difficulty: "1. Lie on your stomach on a mat.
You may want to place a towel
or pillow under your amputated
leg.
2. Get up on your elbows and be
sure your elbows are under
your shoulders.
3. Keep your hips on the mat and
push down with your elbows
into the mat.", workout_category_id: 3)
