class Hobby < ApplicationRecord
    has_many :user_hobbies
    has_many :users, through: :user_hobbies
    has_many :hobby_materials
    has_many :materials, through: :hobby_materials
    has_many :category_hobbies
    has_many :categories, through: :category_hobbies
    accepts_nested_attributes_for :materials

    # Custom setter for fields for inputs in new form validates and creates new materials from user-input text
    # interpolates name to create a custom url value
    def materials_attributes=(attr)
        @iterator = 0
        while @iterator < attr.values.length do
            if attr.values[@iterator]["name"].present?
            @material = Material.find_or_create_by(name: attr.values[@iterator]["name"], url: "https://www.amazon.com/s?k=#{attr.values[@iterator]["name"]}&ref=nb_sb_noss_2")
                if !self.materials.find_by(name: attr.values[@iterator]["name"])
                self.materials << @material
                end
            end
            @iterator += 1
        end
      end

    # for use in hobbies controller to convert materials ids from checkboxes into objects and associate with hobby
    def add_existing_materials(ids)
        ids.each do |id|
            if id
             self.materials << Material.find(id.to_i)
            end
        end
    end

    def self.user_created(user)
        self.all.select {|h| h.created_by == user.username}
    end
    # This was to try making an instance variable which would be available in the params hash,
    # but not persisted to the database.  This array was to contain an array of material names
    # so that I could iterate through it and create new materials during creation of a new hobby
    # after_initialize :new_name_array

    # def new_name_array
    #     @name_array = Array.new
    # end

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
