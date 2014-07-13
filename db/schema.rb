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

ActiveRecord::Schema.define(version: 20140713143219) do

  create_table "cases", force: true do |t|
    t.string   "CaseID"
    t.string   "CaseType"
    t.string   "AppUnit"
    t.string   "CaseName"
    t.string   "TargetLB"
    t.string   "DigSite"
    t.string   "DigArea"
    t.datetime "CaseStart"
    t.datetime "CaseEnd"
    t.time     "TimeStart"
    t.time     "TimeEnd"
    t.integer  "NightStart"
    t.integer  "NightEnd"
    t.string   "ConstructionUnit"
    t.string   "Construction_Man"
    t.string   "Construction_Tel"
    t.string   "Supervise"
    t.string   "Supervise_Man"
    t.string   "Supervise_Tel"
    t.string   "ExamUnit"
    t.date     "ExamDate"
    t.string   "ReMark"
    t.string   "BasicCaseID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
