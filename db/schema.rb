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

ActiveRecord::Schema.define(version: 2019_04_12_154506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "created_fields", force: :cascade do |t|
    t.text "content"
    t.integer "document_id"
    t.integer "field_id"
    t.integer "admin_user"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "file"
    t.string "prefix"
    t.boolean "responsible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types_fields", id: false, force: :cascade do |t|
    t.bigint "field_id", null: false
    t.bigint "document_type_id", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.text "header"
    t.text "footer"
    t.string "logo"
    t.string "ubication_logo"
    t.integer "proces_id"
    t.string "coding_type"
    t.string "coding"
    t.integer "document_type_id"
    t.integer "user_id"
    t.integer "user_create_id"
    t.integer "user_review_id"
    t.integer "user_aprove_id"
    t.date "create_date"
    t.date "review_date"
    t.date "aprove_date"
    t.integer "version"
    t.integer "review"
    t.boolean "is_last"
    t.boolean "state_review", default: false
    t.boolean "state_aprove", default: false
    t.boolean "finish_document"
    t.string "document_state"
    t.string "document_source"
    t.integer "coutn"
    t.string "document_file"
    t.text "change_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "field_type"
    t.boolean "state"
    t.boolean "required"
    t.string "form"
    t.integer "admin_user"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "admin_user"
    t.integer "user_id"
    t.integer "proces_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proces", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "admin_user"
    t.integer "user_id"
    t.string "proces_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "process_maps", force: :cascade do |t|
    t.string "file"
    t.integer "admin_user"
    t.integer "user_id"
    t.integer "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "second_name"
    t.string "first_last_name"
    t.string "second_last_name"
    t.string "document_type"
    t.string "document_number"
    t.date "birthday"
    t.integer "position_id"
    t.string "avatar"
    t.integer "admin_user"
    t.boolean "is_account"
    t.integer "rol_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
