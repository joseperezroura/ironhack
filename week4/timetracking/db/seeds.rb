# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


projectA = Project.create!(name: "Apple", description: "Test new hardware.")
projectB = Project.create!(name: "Wendy's", description: "Research on tasty burgers.")
projectC = Project.create!(name: "Papa John's Virtual Pizza", description: "Research on tasty slices.")
projectD = Project.create!(name: "Under Armor", description: "Create new shoes and apparel.")
projectE = Project.create!(name: "Mel Gibson", description: "Create more action-packed movies.")
projectF = Project.create!(name: "Krispy Kreme", description: "Test new donuts.")
projectH = Project.create!(name: "Universal Studios", description: "Test new roller coasters.")
projectI = Project.create!(name: "Wile E Coyote", description: "Help coyote kill road runner.")
projectJ = Project.create!(name: "The Empire", description: "Partake in the destruction of rebel spies.")
projectK = Project.create!(name: "Warner Bros.", description: "Stop Zach Snyder from ruining DC movies.")

# TimeEntry.create!(hours: 2, minutes: 30, comments: "Blah", date: Date.today, project_id: projectA.id)
projectA.time_entries.create!(hours: 2, minutes: 30, comments: "Blah", date: Date.today)
projectB.time_entries.create!(hours: 1, minutes: 10, comments: "Tested out new chicken sandwhich", date: Date.yesterday)
projectC.time_entries.create!(hours: 1, minutes: 10, comments: "Ate pepperroni", date: Date.yesterday - 1.days)
projectD.time_entries.create!(hours: 1, minutes: 10, comments: "Jogged in new shoes", date: Date.yesterday)
projectI.time_entries.create!(hours: 1, minutes: 10, comments: "Tested out new ACME anvils", date: Date.yesterday)
projectJ.time_entries.create!(hours: 0, minutes: 30, comments: "Created new Death Star plans", date: Date.today)
projectK.time_entries.create!(hours: 4, minutes: 30, comments: "Read scripts", date: Date.today - 2.days)
projectK.time_entries.create!(hours: 0, minutes: 10, comments: "Fired Zach Snyder", date: Date.today - 2.days)
projectK.time_entries.create!(hours: 5, minutes: 0, comments: "New joker casting calls", date: Date.today - 2.days)
