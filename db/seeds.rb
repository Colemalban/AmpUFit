# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
userlist = []
adjectives = ["Quick", "Kneeling", "Fire", "Motionless", "Oafish", "Bewildered", "Languid", "Graceful"]
verbs = ["Jumps", "Leaps", "Carries", "Kicks", "Bends", "Stretches"]
nouns = ["Dumbells", "Resistance Band", "Towel", "Outdoors"]
100.times do |i|
	u = User.create(user_name: "user"+"#{i}", email: "user#{i}@example.com", password_digest: "$2a$10$YW8S7GydSA7w7SVBe5B1pOCMTAuYF0UCGF16y2nHbiPUBvSAnXa1.")
	userlist.push(u.id)	
end 

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
armslist = ["Shoulder Exercises", "Abdominal Strengthening", "Back Exercises", "Leg Exercises"]
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
exerciselist = []
z = Exercise.create(name: "Bridge", difficulty: "1. Lie on your back with a towel roll
under the calf of your amputated leg.
Tighten the muscles in your upper
leg to keep that knee straight.\n
2. Push down into the towel roll and lift
your buttocks up while keeping your stomach muscles tight.\n
3. Hold 5 seconds and then relax and repeat.", workout_category_id: 3)
exerciselist.push(z.id)
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
exerciselist.push(z.id)
z = Exercise.create(name: "Advanced Hip Extension on Back", difficulty: "1. Lie on your back. Place a rolled towel under the end of your
amputated limb. Lift your other leg up.\n
2. Push down into the towel, and lift your hips off the floor or table.
Hold and then lower your hips down\n
This exercise can be done with a prosthesis as well.", workout_category_id: 2)
exerciselist.push(z.id)
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
exerciselist.push(z.id)
z = Exercise.create(name: "Arm and Leg Lift", difficulty: "1. Kneel down on a mat or pad to cushion your knees. Place a pillow
under your foot and lower leg.
2. Get up and balance yourself on your hands and knees.
3. Lift one arm and the opposite leg,
keeping your neck straight with
your back. Hold the position, then
down.
4. Lift the other arm and the opposite
leg. Hold and then down.", workout_category_id: 2)
exerciselist.push(z.id)
z = Exercise.create(name: "Bridging", difficulty: "1. Lie on your back with your sound knee bent and your foot flat on the
floor. Your amputated leg should be flat on the floor.\n
2. Keep your amputated knee straight and lift you hips, pulling your
belly button in and up slightly, while tightening your buttock
muscles", workout_category_id: 3)
exerciselist.push(z.id)
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
exerciselist.push(z.id)
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
exerciselist.push(z.id)
z = Exercise.create(name: "The Simple Shoulder Shrug", difficulty: "How: Make sure you have a solid base by placing your two feet on the ground and sitting up straight.
A:   Bring your shoulders slowly up to your ears then let them drop down to neutral.
B:    To make this harder get someone to push down on the shoulders as you try to lift, or strap a weight on.
Repeat for 4 sets of 15  (i.e. 15 times, rest,15, rest,15, rest,15, stop)", workout_category_id: 6)
exerciselist.push(z.id)
z = Exercise.create(name: "Bringing your knees up", difficulty: "How: Make sure to brace yourself by pulling in your abdominals.
A: Sit on the ground or a flat surface, with your legs straight out in front. First bring one knee up to the chest, then return it to the ground before bring up the other. Now try this with both legs
B: When the above is easy, try the same while in a full lying position
C: To make this more challenging, try this while sitting in a chair, stretch both feet out in front of you, lift them from the floor and hold them off the ground while first bending one knee, straightening, and then the other. start with your heels close to the ground and as your strength improves start with your legs further off the ground.
Repeat whichever level you choose  for 3 sets of 10  (i.e. 10 times, rest,10, rest,10, stop)", workout_category_id: 7)
exerciselist.push(z.id)
z = Exercise.create(name: "Upside down canoe/swimming stretch", difficulty: "How:    Lie on your stomach and reach above your head, stretching up.
A: Push your shoulders up (Backwards) and bring your head up, try to bring your upper body off the floor.  Hold this for 10 seconds, then relax. Now try bringing one leg at a time up, straight as if some one was pulling your leg straight as it lifted, hold for 10, then repeat with other leg.
B:   If you have mastered A, try the swimming technique: Start again on your belly, arm above head in a straight line.  Lift your good arm and the opposite leg a little further off the ground, then return and mimic the movement on the other side.
C: Once B is easier try lifting both legs off the floor at the same time and hold. Brace your stomach and your back by pulling your muscles. Now, try lifting both legs and chest at the same time.
D:  As a final step, add the swimming motion, never touching the ground for the entire count of ten seconds. As this improves start with your legs further off the ground.
Repeat each movement for 3 sets of 10 seconds.", workout_category_id: 8)
exerciselist.push(z.id)
z = Exercise.create(name: "Side-seated Leg Raise", difficulty: "Start by sitting on the floor with your hands palm down on the floor beside you.
Bend one leg so that the bottom of your foot is flat on the floor mat or carpet. Keep the other leg straight and fully extended.
Lean your upper body back about 20 to 30 degrees so that you're resting comfortably on your hands.
Now lift the straight leg about six inches off the ground. Hold this position for one second, then move your straight leg in the air to the side, or away from your bent leg as far as you can. Hold that position for about one second, then return your straight leg back to the starting position.
Be sure to maintain a steady pace in moving from the middle to the side, and avoid jerky movements. When first performing this exercise you may notice that your leg is a bit shaky; however, this is a normal adaptation to beginning an exercise program. Basically, your nerves are getting used to talking to your muscles. The shakiness will resolve as you continue working out.
Perform three to five sets of the Side Seated Leg Raise, using 8 to 12 repetitions per set.", workout_category_id: 9)
exerciselist.push(z.id)
z = Exercise.create(name: "Calf Raises", difficulty: "To perform calf raises all you'll need is a wall or a sturdy piece of furniture to hold on to to help you maintain your balance.
It is best if you can do calf raises on a stair or on a step, but you can do these on a flat floor if you do not have stairs or exercise equipment.
Hold on to the stair rail or wall. Your feet should be about shoulder width apart, a few inches away from the wall.
While holding onto the wall for stability, stand up on your toes as high as you can. Slowly lower your heels back to the ground without letting your heels touch the ground.
Again, elevate your heels off the ground and stand on your toes to reach your highest point. Return back to the starting position without your heels touching the ground.
Perform three sets of calf raises with 12 to 15 repetitions per set. After performing this exercise you should feel a burn, or tightness in the back of your lower leg.", workout_category_id: 9)
exerciselist.push(z.id)

75.times do |q|
	Exercise.create(name: "#{adjectives.sample} #{verbs.sample}" , difficulty: "Lorem ipsum dolor est", workout_category_id: (q % 17), equipment: "#{nouns.sample}", votes: rand(-4..32))
end

100.times do |i|
	3.times do |j|
		f = Favorite.create(user_id: i, exercise_id:  rand(1..75))
	end
end
