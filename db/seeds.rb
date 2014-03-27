# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "tester@gmail.com", password: "superduper1")

Forem::Category.create(name: "Laura Mouse")

Forem::Forum.create(name: "RKelley", description: "testing 124")

Forem::Topic.create(subject:"rkelley")
