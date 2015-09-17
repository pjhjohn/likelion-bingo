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

ActiveRecord::Schema.define(version: 20150917220217) do

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.boolean  "checked",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "boards", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "confirmed",  default: false
    t.integer  "cell_00"
    t.integer  "cell_01"
    t.integer  "cell_02"
    t.integer  "cell_03"
    t.integer  "cell_04"
    t.integer  "cell_05"
    t.integer  "cell_06"
    t.integer  "cell_10"
    t.integer  "cell_11"
    t.integer  "cell_12"
    t.integer  "cell_13"
    t.integer  "cell_14"
    t.integer  "cell_15"
    t.integer  "cell_16"
    t.integer  "cell_20"
    t.integer  "cell_21"
    t.integer  "cell_22"
    t.integer  "cell_23"
    t.integer  "cell_24"
    t.integer  "cell_25"
    t.integer  "cell_26"
    t.integer  "cell_30"
    t.integer  "cell_31"
    t.integer  "cell_32"
    t.integer  "cell_33"
    t.integer  "cell_34"
    t.integer  "cell_35"
    t.integer  "cell_36"
    t.integer  "cell_40"
    t.integer  "cell_41"
    t.integer  "cell_42"
    t.integer  "cell_43"
    t.integer  "cell_44"
    t.integer  "cell_45"
    t.integer  "cell_46"
    t.integer  "cell_50"
    t.integer  "cell_51"
    t.integer  "cell_52"
    t.integer  "cell_53"
    t.integer  "cell_54"
    t.integer  "cell_55"
    t.integer  "cell_56"
    t.integer  "cell_60"
    t.integer  "cell_61"
    t.integer  "cell_62"
    t.integer  "cell_63"
    t.integer  "cell_64"
    t.integer  "cell_65"
    t.integer  "cell_66"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
