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
