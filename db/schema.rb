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

ActiveRecord::Schema.define(version: 2019_05_05_193510) do

  create_table "visualizations", force: :cascade do |t|
    t.integer "resource_visited_id", null: false
    t.string "user_email", null: false
    t.string "type", default: "ProfileView", null: false
    t.integer "count", default: 0
    t.date "last_viewed_at"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_visited_id"], name: "index_visualizations_on_resource_visited_id"
  end

end
