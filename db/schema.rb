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

ActiveRecord::Schema.define(version: 2019_10_26_190957) do

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "speaker_languages", force: :cascade do |t|
    t.integer "speaker_id"
    t.integer "language_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_speaker_languages_on_language_id"
    t.index ["speaker_id"], name: "index_speaker_languages_on_speaker_id"
  end

  create_table "speaker_topics", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.integer "speaker_id", null: false
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
    t.integer "speaker_language"
    t.integer "speaker_language_id"
    t.integer "speaker_topic_id"
    t.index ["speaker_language_id"], name: "index_speakers_on_speaker_language_id"
    t.index ["speaker_topic_id"], name: "index_speakers_on_speaker_topic_id"
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
    t.integer "speaker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "speaker_topics", "speakers"
  add_foreign_key "speaker_topics", "topics"
  add_foreign_key "speakers", "speaker_languages"
  add_foreign_key "speakers", "speaker_topics"
  add_foreign_key "users", "speakers"
end
