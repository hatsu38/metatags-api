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

ActiveRecord::Schema.define(version: 2020_05_10_024938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "metatags", comment: "Metatag", force: :cascade do |t|
    t.string "url", comment: "URL"
    t.string "title", comment: "タイトル"
    t.string "description", comment: "Description"
    t.string "keyword", comment: "Keyword"
    t.string "og_site_name", comment: "OGPのサイトName"
    t.string "og_url", comment: "OGPのURL"
    t.string "og_title", comment: "OGPのタイトル"
    t.string "og_description", comment: "OGPのDescription"
    t.string "og_image", comment: "OGPの画像"
    t.string "og_twitter_card", comment: "TwitterのOGPカードの種類"
    t.string "og_twitter_title", comment: "TwitterのOGPカードのタイトル"
    t.string "og_twitter_description", comment: "TwitterのOGPカードのDescription"
    t.string "domain", comment: "ドメイン"
  end

end
