# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_27_163230) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_hobbies", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "hobby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_hobbies_on_category_id"
    t.index ["hobby_id"], name: "index_category_hobbies_on_hobby_id"
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hobby_materials", force: :cascade do |t|
    t.integer "hobby_id", null: false
    t.integer "material_id", null: false
    t.index ["hobby_id"], name: "index_hobby_materials_on_hobby_id"
    t.index ["material_id"], name: "index_hobby_materials_on_material_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_hobbies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hobby_id", null: false
    t.index ["hobby_id"], name: "index_user_hobbies_on_hobby_id"
    t.index ["user_id"], name: "index_user_hobbies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "category_hobbies", "categories"
  add_foreign_key "category_hobbies", "hobbies"
  add_foreign_key "hobby_materials", "hobbies"
  add_foreign_key "hobby_materials", "materials"
  add_foreign_key "user_hobbies", "hobbies"
  add_foreign_key "user_hobbies", "users"
end
