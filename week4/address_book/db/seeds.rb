# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create!(name: "Bob", address: "21 S. Street", phone: "305-555-5555", email: "bob@bob.com")
projectB = Project.create!(name: "Bear", address: "22 S. Street", phone: "305-666-6666", email: "bear@bear.com")
projectC = Project.create!(name: "Brian", address: "23 S. Street", phone: "305-777-7777", email: "brian@brian.com")
projectD = Project.create!(name: "Billy", address: "24 S. Street", phone: "305-888-8888", email: "billy@billy.com")
