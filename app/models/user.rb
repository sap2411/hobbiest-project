class User < ApplicationRecord
    has_many :user_hobbies
    has_many :hobbies, through: :user_hobbies
end
