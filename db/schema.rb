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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110121031119) do

  create_table "croppals", :force => true do |t|
    t.string   "ctop"
    t.string   "cleft"
    t.string   "cheight"
    t.string   "cwidth"
    t.string   "top"
    t.string   "left"
    t.string   "height"
    t.string   "width"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "focals", :force => true do |t|
    t.integer  "user_id"
    t.integer  "masterpiece_id"
    t.string   "cx"
    t.string   "cy"
    t.string   "radius"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imageals", :force => true do |t|
    t.string   "image_uid"
    t.string   "top"
    t.string   "left"
    t.string   "height"
    t.string   "width"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "masterpieces", :force => true do |t|
    t.integer  "user_id"
    t.string   "image_uid"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textals", :force => true do |t|
    t.string   "top"
    t.string   "left"
    t.string   "height"
    t.string   "width"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                             :default => "",    :null => false
    t.string   "encrypted_password", :limit => 128, :default => "",    :null => false
    t.string   "password_salt",                     :default => "",    :null => false
    t.integer  "sign_in_count",                     :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                             :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
