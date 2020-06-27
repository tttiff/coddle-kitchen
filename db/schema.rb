# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_27_132018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hack_categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hacks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.string "youtube_url"
    t.boolean "publish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_hacks", force: :cascade do |t|
    t.bigint "hack_id"
    t.bigint "ingredient_preservation_id"
    t.bigint "hack_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hack_category_id"], name: "index_ingredient_hacks_on_hack_category_id"
    t.index ["hack_id"], name: "index_ingredient_hacks_on_hack_id"
    t.index ["ingredient_preservation_id"], name: "index_ingredient_hacks_on_ingredient_preservation_id"
  end

  create_table "ingredient_preservations", force: :cascade do |t|
    t.integer "days_added", default: 0, null: false
    t.boolean "initial_state", default: false, null: false
    t.bigint "ingredient_id"
    t.bigint "preservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_preservations_on_ingredient_id"
    t.index ["preservation_id"], name: "index_ingredient_preservations_on_preservation_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preservations", force: :cascade do |t|
    t.string "method", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.boolean "vital", default: false, null: false
    t.boolean "substitute_possible", default: false, null: false
    t.bigint "recipe_id"
    t.bigint "ingredient_id"
    t.bigint "measurement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["measurement_id"], name: "index_recipe_ingredients_on_measurement_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "instructions"
    t.string "source_url"
    t.string "image"
    t.string "youtube_url"
    t.boolean "publish", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredient_hacks", "hack_categories"
  add_foreign_key "ingredient_hacks", "hacks"
  add_foreign_key "ingredient_hacks", "ingredient_preservations"
  add_foreign_key "ingredient_preservations", "ingredients"
  add_foreign_key "ingredient_preservations", "preservations"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "measurements"
  add_foreign_key "recipe_ingredients", "recipes"
end
