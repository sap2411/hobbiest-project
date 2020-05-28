# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CategoryHobby.destroy_all
HobbyMaterial.destroy_all
Category.destroy_all
Hobby.destroy_all
Material.destroy_all

Category.create(name: "Outdoor")
Category.create(name: "Music")
Category.create(name: "Arts and Crafts")
Category.create(name: "Food and Beverage")


fishing = Hobby.create(name: "Fishing", description: "Year round fun in practially any climate! All you need are these tools and a good fishing spot!", created_by: "Admin")

fishing_rod = Material.create(name: "Fishing Rod", url: "https://www.amazon.com/s?k=fishing+rod&ref=nb_sb_noss_2")
tackle_box = Material.create(name: "Tackle Box", url: "https://www.amazon.com/s?k=tackle+box&ref=nb_sb_noss_2")
fish_bait = Material.create(name: "Fish Bait", url: "https://www.amazon.com/s?k=fish+bait&ref=nb_sb_noss_2")
fish_hooks = Material.create(name: "Fish Hooks", url: "https://www.amazon.com/s?k=fish+hooks&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 1, hobby_id: 1)
HobbyMaterial.create(material_id: 2, hobby_id: 1)
HobbyMaterial.create(material_id: 3, hobby_id: 1)
HobbyMaterial.create(material_id: 4, hobby_id: 1)


bird_watching = Hobby.create(name: "Bird Watching", description: "The best and most humane way to connect with wildlife in your own community!", created_by: "Admin")

binoculars = Material.create(name: "Binoculars", url: "https://www.amazon.com/s?k=binoculars&ref=nb_sb_noss_2")
bird_house = Material.create(name: "Bird House", url: "https://www.amazon.com/s?k=bird+house&ref=nb_sb_noss_2")
bird_feed = Material.create(name: "Bird Feed", url: "https://www.amazon.com/s?k=bird+feed&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 5, hobby_id: 2)
HobbyMaterial.create(material_id: 6, hobby_id: 2)
HobbyMaterial.create(material_id: 7, hobby_id: 2)


electric_guitar = Hobby.create(name: "Electric Guitar", description: "An easy and relatively cheap instrument to start learning. You can even play exclusively through headphones!", created_by: "Admin")

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

painting = Hobby.create(name: "Painting", description: "Not only do you get to relax and unwind with this hobby, you can hang your artwork in your house when you're done!", created_by: "Admin")

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

brewing_beer = Hobby.create(name: "Beer Brewing", description: "Why pay too much money for OK beer when you can make it yourself! The best part about this hobby is it always ends with a drink!", created_by: "Admin")

Material.create(name: "Beer Brewing Kit", url: "https://www.amazon.com/s?k=beer+brewing+kit&ref=nb_sb_noss_2")

HobbyMaterial.create(material_id: 23, hobby_id: 6)

CategoryHobby.create(category_id: 1, hobby_id: 1)
CategoryHobby.create(category_id: 1, hobby_id: 2)
CategoryHobby.create(category_id: 2, hobby_id: 3)
CategoryHobby.create(category_id: 3, hobby_id: 4)
CategoryHobby.create(category_id: 4, hobby_id: 5)
CategoryHobby.create(category_id: 4, hobby_id: 6)

Hobby.create(name: "Sewing", description: "Not only will you have a fun creative hobby, you'll be able to restore and create outfits as well!", created_by: "Admin")

Material.create(name: "Sewing Machine", url: "https://www.amazon.com/s?k=sewing+machine&ref=nb_sb_noss_2")
Material.create(name: "Measuring Tape", url: "https://www.amazon.com/s?k=measuring+tape&ref=nb_sb_noss_2")
Material.create(name: "Pins and Pincushion", url: "https://www.amazon.com/s?k=pins+and+pushcushion&ref=nb_sb_noss_2")
Material.create(name: "Sewing Machine Needles", url: "https://www.amazon.com/s?k=sewing+machine+needles&ref=nb_sb_noss_2")
Material.create(name: "Thimble", url: "https://www.amazon.com/s?k=thimble&ref=nb_sb_noss_2")
HobbyMaterial.create(material_id: 24, hobby_id: 7)
HobbyMaterial.create(material_id: 25, hobby_id: 7)
HobbyMaterial.create(material_id: 26, hobby_id: 7)
HobbyMaterial.create(material_id: 27, hobby_id: 7)
HobbyMaterial.create(material_id: 28, hobby_id: 7)

CategoryHobby.create(category_id: 3, hobby_id: 7)

Hobby.create(name: "DJing", description: "Make your favorite songs even better, share your skills for everyone to hear!", created_by: "Admin")
Material.create(name: "DJ Turntables", url: "https://www.amazon.com/s?k=dj+turntables&ref=nb_sb_noss_2")
Material.create(name: "DJ Cartridges", url: "https://www.amazon.com/s?k=dj+cartridges&ref=nb_sb_noss_2")
Material.create(name: "DJ Mixer", url: "https://www.amazon.com/s?k=dj+Mixer&ref=nb_sb_noss_2")
Material.create(name: "DJ Headphones", url: "https://www.amazon.com/s?k=dj+Headphones&ref=nb_sb_noss_2")
HobbyMaterial.create(material_id: 29, hobby_id: 8)
HobbyMaterial.create(material_id: 30, hobby_id: 8)
HobbyMaterial.create(material_id: 31, hobby_id: 8)
HobbyMaterial.create(material_id: 32, hobby_id: 8)

CategoryHobby.create(category_id: 2, hobby_id: 8)


