class Hobby < ApplicationRecord
    has_many :user_hobbies
    has_many :users, through: :user_hobbies
    has_many :hobby_materials
    has_many :materials, through: :hobby_materials
end
