# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(username: "Tom", password: "password", bio: "the cool character from that famous book")

user2 = User.create(username: "Melissa", password: "password", bio: "the supporting sidekick")

user3 = User.create(username: "Brian", password: "1234", bio: "instructor and fun-maker")

# user1.posts = Post.create ([{body: ""}, {body: ""}])