class RemoveCategoryFromHobbies < ActiveRecord::Migration[6.0]
  def change
    remove_column :hobbies, :category
  end
end
