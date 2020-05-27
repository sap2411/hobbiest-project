# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserHobby.destroy_all
HobbyMaterial.destroy_all
User.destroy_all
Hobby.destroy_all
Material.destroy_all

Category.create(name: "Outdoor")
Category.create(name: "Music")
Category.create(name: "Arts and Crafts")
Category.create(name: "Food and Beverage")


40.times do
    User.create(username: Faker::Name.first_name)
end

fishing = Hobby.create(name: "Fishing", description: "Year round fun in practially any climate! All you need are these tools and a good fishing spot!", created_by: User.first.username)

fishing_rod = Material.create(name: "Fishing Rod", url: "https://www.amazon.com/s?k=fishing+rod&ref=nb_sb_noss_2")
tackle_box = Material.create(name: "Tackle Box", url: "https://www.amazon.com/s?k=tackle+box&ref=nb_sb_noss_2")
fish_bait = Material.create(name: "Fish Bait", url: "https://www.amazon.com/s?k=fish+bait&ref=nb_sb_noss_2")
fish_hooks = Material.create(name: "Fish Hooks", url: "https://www.amazon.com/s?k=fish+hooks&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 1, hobby_id: 1)
HobbyMaterial.create(material_id: 2, hobby_id: 1)
HobbyMaterial.create(material_id: 3, hobby_id: 1)
HobbyMaterial.create(material_id: 4, hobby_id: 1)


bird_watching = Hobby.create(name: "Bird Watching", description: "The best and most humane way to connect with wildlife in your own community!", created_by: User.last.username)

binoculars = Material.create(name: "Binoculars", url: "https://www.amazon.com/s?k=binoculars&ref=nb_sb_noss_2")
bird_house = Material.create(name: "Bird House", url: "https://www.amazon.com/s?k=bird+house&ref=nb_sb_noss_2")
bird_feed = Material.create(name: "bird_feed", url: "https://www.amazon.com/s?k=bird+feed&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 5, hobby_id: 2)
HobbyMaterial.create(material_id: 6, hobby_id: 2)
HobbyMaterial.create(material_id: 7, hobby_id: 2)


electric_guitar = Hobby.create(name: "Electric Guitar", description: "An easy and relatively cheap instrument to start learning. You can even play exclusively through headphones!", created_by: User.all[2].username)

Material.create(name: "Electric Guitar", url: "https://www.amazon.com/s?k=electric+guitar&ref=nb_sb_noss_2")
Material.create(name: "Guitar Amp", url: "https://www.amazon.com/s?k=guitar+amp&ref=nb_sb_noss_2")
Material.create(name: "XLR Cable", url: "https://www.amazon.com/s?k=xlr+cable&ref=nb_sb_noss_2")
Material.create(name: "Audio Interface", url: "https://www.amazon.com/s?k=audio+interface&ref=nb_sb_noss_2")
Material.create(name: "Guitar Tuner", url: "https://www.amazon.com/s?k=guitar+tuner&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 8, hobby_id: 3)
HobbyMaterial.create(material_id: 9, hobby_id: 3)
HobbyMaterial.create(material_id: 10, hobby_id: 3)
HobbyMaterial.create(material_id: 11, hobby_id: 3)
HobbyMaterial.create(material_id: 12, hobby_id: 3)

painting = Hobby.create(name: "Painting", description: "Not only do you get to relax and unwind with this hobby, you can hang your artwork in your house when you're done!", created_by: User.last.username)

Material.create(name: "Easle", url: "https://www.amazon.com/s?k=easle&ref=nb_sb_noss_2")
Material.create(name: "Paint", url: "https://www.amazon.com/s?k=paint&ref=nb_sb_noss_2")
Material.create(name: "Paint Pallet", url: "https://www.amazon.com/s?k=paint+pallet&ref=nb_sb_noss_2")
Material.create(name: "Paint Canvas", url: "https://www.amazon.com/s?k=paint+canvas&ref=nb_sb_noss_2")
Material.create(name: "Canvas Drop Cloth", url: "https://www.amazon.com/s?k=canvas+drop+cloth&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 13, hobby_id: 4)
HobbyMaterial.create(material_id: 14, hobby_id: 4)
HobbyMaterial.create(material_id: 15, hobby_id: 4)
HobbyMaterial.create(material_id: 16, hobby_id: 4)
HobbyMaterial.create(material_id: 17, hobby_id: 4)

pastry_making = Hobby.create(name: "Pastry Making", description: "With a little bit of practice, you'll never need to buy a pastry again!", created_by: "Admin")

Material.create(name: "Baking Sheet", url: "https://www.amazon.com/s?k=baking+sheet&ref=nb_sb_noss_2")
Material.create(name: "KitchenAid Mixer", url: "https://www.amazon.com/s?k=kitchenaid+mixer&ref=nb_sb_noss_2")
Material.create(name: "Apron", url: "https://www.amazon.com/s?k=apron&ref=nb_sb_noss_2")
Material.create(name: "Mixing Bowls", url: "https://www.amazon.com/s?k=mixing+bowls&ref=nb_sb_noss_2")
Material.create(name: "Measuring Cups", url: "https://www.amazon.com/s?k=measuring_cups&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 18, hobby_id: 5)
HobbyMaterial.create(material_id: 19, hobby_id: 5)
HobbyMaterial.create(material_id: 20, hobby_id: 5)
HobbyMaterial.create(material_id: 21, hobby_id: 5)
HobbyMaterial.create(material_id: 22, hobby_id: 5)

brewing_beer = Hobby.create(name: "Beer Brewing", description: "Why pay too much money for OK beer when you can make it yourself! The best part about this hobby is it always ends with a drink!", created_by: User.all[1].username)

Material.create(name: "Beer Brewing Kit", url: "https://www.amazon.com/s?k=beer+brewing+kit&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 23, hobby_id: 6)

CategoryHobby.create(category_id: 1, hobby_id: 1)
CategoryHobby.create(category_id: 1, hobby_id: 2)
CategoryHobby.create(category_id: 2, hobby_id: 3)
CategoryHobby.create(category_id: 3, hobby_id: 4)
CategoryHobby.create(category_id: 4, hobby_id: 5)
CategoryHobby.create(category_id: 4, hobby_id: 6)

50.times do
    UserHobby.create(user_id: User.all.sample.id, hobby_id: Hobby.all.sample.id)
end
