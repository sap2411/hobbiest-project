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


40.times do
    User.create(username: Faker::Name.first_name)
end

20.times do
    Hobby.create(name: Faker::Job.title, category: Faker::Job.field, description: nil, created_by: nil)
end


60.times do
    name = Faker::Appliance.brand
    Material.create(name: name, url: "https://www.amazon.com/s?k=#{name}&ref=nb_sb_noss_2")
end

50.times do
    UserHobby.create(user_id: User.all.sample.id, hobby_id: Hobby.all.sample.id)
end

80.times do
    HobbyMaterial.create(material_id: Material.all.sample.id, hobby_id: Hobby.all.sample.id)
end