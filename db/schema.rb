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

ActiveRecord::Schema.define(version: 2019_10_26_220929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "speaker_languages", force: :cascade do |t|
    t.bigint "speaker_id"
    t.bigint "language_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_speaker_languages_on_language_id"
    t.index ["speaker_id"], name: "index_speaker_languages_on_speaker_id"
  end

  create_table "speaker_topics", force: :cascade do |t|
    t.bigint "topic_id", null: false
    t.bigint "speaker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["speaker_id"], name: "index_speaker_topics_on_speaker_id"
    t.index ["topic_id"], name: "index_speaker_topics_on_topic_id"
  end

  create_table "speakers", force: :cascade do |t|
    t.string "pronouns"
    t.string "location"
    t.boolean "will_travel"
    t.string "occupation"
    t.string "tagline"
    t.string "image"
    t.string "video"
    t.string "instagram"
    t.string "twitter"
    t.string "linkedin"
    t.string "website"
    t.text "biography"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.bigint "speaker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["speaker_id"], name: "index_users_on_speaker_id"
  end

  add_foreign_key "speaker_topics", "speakers"
  add_foreign_key "speaker_topics", "topics"
  add_foreign_key "users", "speakers"
end
