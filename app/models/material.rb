class Material < ApplicationRecord
    has_many :hobby_materials
    has_many :hobbies, through: :hobby_materials
end
