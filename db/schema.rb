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

ActiveRecord::Schema.define(version: 20140708162944) do

  create_table "cases", force: true do |t|
    t.string   "caseId"
    t.string   "caseType"
    t.string   "appUnit"
    t.string   "caseName"
    t.string   "targetLb"
    t.string   "digSite"
    t.string   "digArea"
    t.datetime "caseStart"
    t.datetime "caseEnd"
    t.time     "timeStart"
    t.time     "timeEnd"
    t.time     "nightStart"
    t.time     "nightEnd"
    t.string   "constructionUnit"
    t.string   "constructionMan"
    t.string   "constructionTel"
    t.string   "supervise"
    t.string   "superviseMan"
    t.string   "superviseTel"
    t.string   "examUnit"
    t.date     "examDate"
    t.string   "reMark"
    t.string   "basicCaseId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
