# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140415073002) do

  create_table "comments", force: true do |t|
    t.integer  "shop_id"
    t.string   "commenter"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "operate_period"
    t.string   "closing"
    t.boolean  "is_selfservice"
    t.boolean  "is_child_room"
    t.boolean  "is_franchise"
    t.binary   "exterior"
    t.binary   "interior"
    t.binary   "table_cleaness"
    t.binary   "noise_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "table_count"
    t.integer  "alone_table_count"
    t.integer  "couple_table_count"
    t.integer  "room_count"
    t.boolean  "is_off_shoes"
    t.string   "address"
    t.text     "public_transport_info"
    t.text     "surrounding_info"
    t.boolean  "do_parking"
    t.boolean  "do_card_pay"
    t.boolean  "is_pre_pay"
    t.boolean  "is_coupon"
    t.boolean  "is_dessert"
    t.boolean  "do_drink"
    t.boolean  "is_special_menu"
    t.integer  "queue_waited"
    t.integer  "order_waited"
    t.boolean  "is_rice_free"
    t.boolean  "is_takeout"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
