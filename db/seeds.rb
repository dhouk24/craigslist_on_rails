# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do 
User.create(:username => Faker::Lorem.words(1)[0], :password => "qwerty")
end

5.times do 
Category.create(:name => Faker::Lorem.words(1)[0], :user_id => rand(5)+ 1)
end


30.times do
  Post.create(:title => Faker::Lorem.words(1)[0],
              :category_id => rand(5)+ 1,
              :user_id => rand(5)+ 1,
              :price => (10..100).to_a.sample.to_s,
              :description => Faker::Lorem.sentences(3).join(" "),
              :email =>  Faker::Internet.email,
              :edit_key => (("A".."Z").to_a+(0..9).to_a).sample(6).join)
end
