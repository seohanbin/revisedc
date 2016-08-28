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

ActiveRecord::Schema.define(version: 20160828075933) do

  create_table "dpatients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "spstr"
    t.string   "name"
    t.string   "nickname"
    t.string   "phonenum"
    t.integer  "age"
    t.integer  "gender"
    t.date     "birth"
    t.boolean  "agreement"
    t.text     "pmhistory"
    t.string   "careerjob"
    t.string   "location"
  end

  add_index "dpatients", ["email"], name: "index_dpatients_on_email", unique: true
  add_index "dpatients", ["reset_password_token"], name: "index_dpatients_on_reset_password_token", unique: true

  create_table "dstdoctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "spstr"
    t.string   "name"
    t.string   "nickname"
    t.string   "phonenum"
    t.integer  "age"
    t.integer  "gender"
    t.date     "birth"
    t.boolean  "agreement"
    t.string   "university"
    t.string   "studentid"
  end

  add_index "dstdoctors", ["email"], name: "index_dstdoctors_on_email", unique: true
  add_index "dstdoctors", ["reset_password_token"], name: "index_dstdoctors_on_reset_password_token", unique: true

  create_table "patientregists", force: :cascade do |t|
    t.text     "chiefcomplaint"
    t.string   "pipainwhen"
    t.string   "pisustain"
    t.string   "piprogress"
    t.boolean  "completion"
    t.integer  "evaluation"
    t.integer  "dpatient_id"
    t.integer  "dstdoctor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "patientregists", ["dpatient_id"], name: "index_patientregists_on_dpatient_id"
  add_index "patientregists", ["dstdoctor_id"], name: "index_patientregists_on_dstdoctor_id"

  create_table "stdoctorregists", force: :cascade do |t|
    t.string   "treatsubject"
    t.string   "treatdescript"
    t.string   "treatcondition"
    t.boolean  "completion"
    t.integer  "evaluation"
    t.integer  "dpatient_id"
    t.integer  "dstdoctor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "stdoctorregists", ["dpatient_id"], name: "index_stdoctorregists_on_dpatient_id"
  add_index "stdoctorregists", ["dstdoctor_id"], name: "index_stdoctorregists_on_dstdoctor_id"

end
