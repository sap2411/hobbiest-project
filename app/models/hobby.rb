class Hobby < ApplicationRecord
    has_many :user_hobbies
    has_many :users, through: :user_hobbies
    has_many :hobby_materials
    has_many :materials, through: :hobby_materials

    def self.sorted_by_materials
        self.all.sort_by {|hobby| hobby.materials.count}
    end
end
