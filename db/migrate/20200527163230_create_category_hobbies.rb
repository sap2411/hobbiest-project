class CreateCategoryHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :category_hobbies do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :hobby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
