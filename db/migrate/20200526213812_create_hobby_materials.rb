class CreateHobbyMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :hobby_materials do |t|
      t.belongs_to :hobby, null: false, foreign_key: true
      t.belongs_to :material, null: false, foreign_key: true
    end
  end
end
