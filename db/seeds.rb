# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Battle.delete_all
User.create([ {:handle => "@jameswilliamiii"}, {:handle => "@dexter_teng"}, {:handle => "@kleeee23"}, {:handle => "@KanyesBoy"}, {:handle => "@WesDearborn"}, {:handle => "@scottluptowski"} ])
Battle.create([ {:user_id => 1, :friend_id => 2}, {:user_id => 3, :friend_id => 4}, {:user_id => 5, :friend_id => 6}, {:user_id => 1, :friend_id => 3}, {:user_id => 2, :friend_id => 4}, {:user_id => 3, :friend_id => 6} ])