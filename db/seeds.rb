# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Student.destroy_all
Course.destroy_all

15.times do |i|
	Course.create(id: i + 1, title: Faker::ProgrammingLanguage.name, content: Faker::Educator.course)
end

40.times do |i|
	c = Course.find(1 + rand(15))
	s = Student.new(id: i + 1, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	s.course = c
	s.save
end