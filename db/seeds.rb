# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marissa = User.create(firstName: "Marissa", lastName: "McHugh", username: "MMcHugh591")


hike1 = HikingList.create(trail: "Angels Landing", user_id: 1)

packlist1 = PackingList.create(title: "Doggo is Coming", user_id: 1)

packitem1 = PackingItem.create(name: "water bowl", packed: true, packing_list_id: 1)
packitem2 = PackingItem.create(name: "towel", packed: false, packing_list_id: 1)
packitem3 = PackingItem.create(name: "dog treats", packed: true, packing_list_id: 1)
