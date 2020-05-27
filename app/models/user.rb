class User < ApplicationRecord
    has_many :user_hobbies
    has_many :hobbies, through: :user_hobbies

    def simplest_hobby
        self.sorted.first
    end

    def most_complex_hobbie
        self.sorted.last
    end

    def sorted
        self.hobbies.sort_by {|hobby| hobby.materials.count}
    end
end
