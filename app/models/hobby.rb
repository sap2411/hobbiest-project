class Hobby < ApplicationRecord
    has_many :user_hobbies
    has_many :users, through: :user_hobbies
    has_many :hobby_materials
    has_many :materials, through: :hobby_materials
    has_many :category_hobbies
    has_many :categories, through: :category_hobbies
    accepts_nested_attributes_for :materials

    # This was to try making an instance variable which would be available in the params hash,
    # but not persisted to the database.  This array was to contain an array of material names
    # so that I could iterate through it and create new materials during creation of a new hobby
    # after_initialize :new_name_array

    def new_name_array
        @name_array = Array.new
    end

    def self.sorted
        self.all.sort_by {|hobby| hobby.materials.count}
    end

    def self.simplest_hobby
        self.sorted.first.name
    end

    def self.most_complex_hobbie
        self.sorted.last.name
    end

    def self.most_popular_hobby
        all.max_by {|h| h.users.count}.name
    end

    def self.least_popular_hobby
        all.min_by {|h| h.users.count}.name
    end
end
