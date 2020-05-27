class CategoryHobby < ApplicationRecord
  belongs_to :category
  belongs_to :hobby
end
