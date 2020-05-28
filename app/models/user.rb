class User < ApplicationRecord
    has_many :user_hobbies
    has_many :hobbies, through: :user_hobbies
    has_secure_password
    validates :username, uniqueness: true

    def simplest_hobby
        self.sorted.first.name
    end

    def most_complex_hobbie
        self.sorted.last.name
    end

    def sorted
        self.hobbies.sort_by {|hobby| hobby.materials.count}
    end

    def self.most_hobbies
        self.all.max_by {|u| u.hobbies.count}.username
    end

    def admin?
        admin ? "Yes!" : "Nope, Cheater"
    end

    # def favorite_catagory
    #     self.hobbies.
    # end
end
