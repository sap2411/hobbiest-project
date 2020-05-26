class CreateUserHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_hobbies do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hobby, null: false, foreign_key: true
    end
  end
end
