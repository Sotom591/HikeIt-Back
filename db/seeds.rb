# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marissa = User.create(firstName: "Marissa", lastName: "McHugh", username: "MMcHugh591", password: "password")


hike1 = HikingList.create(API_id: 7004226, name: "Sunshine Lion's Lair Loop", summary: "Great Mount Sanitas views are the reward for this gentler loop in Sunshine Canyon.", difficulty: "blue", stars: 4.6, starVotes: 76, location: "Boulder, Colorado", imgSmall: "https://cdn-files.apstatic.com/hike/7039883_small_1509768579.jpg", imgMedium: "https://cdn-files.apstatic.com/hike/7039883_medium_1509768579.jpg", length: 5.3, ascent: 1274, descent: -1293, high: 6802, low: 5530, longitude: -105.2979, latitude: 40.02, user_id: 1)

packlist1 = PackingList.create(title: "Doggo is Coming", user_id: 1)

packitem1 = PackingItem.create(name: "water bowl", packed: true, packing_list_id: 1)
packitem2 = PackingItem.create(name: "towel", packed: false, packing_list_id: 1)
packitem3 = PackingItem.create(name: "dog treats", packed: true, packing_list_id: 1)
