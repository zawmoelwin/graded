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

ActiveRecord::Schema.define(version: 20170325225114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actual_answers", force: :cascade do |t|
    t.integer "unique_code_id", null: false
    t.text    "question1",      null: false
    t.text    "question2",      null: false
    t.text    "question3",      null: false
    t.text    "question4",      null: false
    t.text    "question5",      null: false
    t.text    "question6",      null: false
    t.text    "question7",      null: false
    t.text    "question8",      null: false
    t.text    "question9",      null: false
    t.text    "question10",     null: false
    t.text    "question11",     null: false
    t.text    "question12",     null: false
    t.text    "question13",     null: false
    t.text    "question14",     null: false
    t.text    "question15",     null: false
    t.text    "question16",     null: false
    t.text    "question17",     null: false
    t.text    "question18",     null: false
    t.text    "question19",     null: false
    t.text    "question20",     null: false
    t.text    "question21",     null: false
    t.text    "question22",     null: false
    t.text    "question23",     null: false
    t.text    "question24",     null: false
    t.text    "question25",     null: false
    t.text    "question26",     null: false
    t.text    "question27",     null: false
    t.text    "question28",     null: false
    t.text    "question29",     null: false
    t.text    "question30",     null: false
    t.text    "question31",     null: false
    t.text    "question32",     null: false
    t.text    "question33",     null: false
    t.text    "question34",     null: false
    t.text    "question35",     null: false
    t.text    "question36",     null: false
    t.text    "question37",     null: false
    t.text    "question38",     null: false
    t.text    "question39",     null: false
    t.text    "question40",     null: false
    t.text    "question41",     null: false
    t.text    "question42",     null: false
    t.text    "question43",     null: false
    t.text    "question44",     null: false
    t.text    "question45",     null: false
    t.text    "question46",     null: false
    t.text    "question47",     null: false
    t.text    "question48",     null: false
    t.text    "question49",     null: false
    t.text    "question50",     null: false
    t.text    "question51",     null: false
    t.text    "question52",     null: false
    t.text    "question53",     null: false
    t.text    "question54",     null: false
    t.text    "question55",     null: false
    t.text    "question56",     null: false
    t.text    "question57",     null: false
    t.text    "question58",     null: false
    t.text    "question59",     null: false
    t.text    "question60",     null: false
    t.text    "question61",     null: false
    t.text    "question62",     null: false
    t.text    "question63",     null: false
    t.text    "question64",     null: false
    t.text    "question65",     null: false
    t.text    "question66",     null: false
    t.text    "question67",     null: false
    t.text    "question68",     null: false
    t.text    "question69",     null: false
    t.text    "question70",     null: false
    t.text    "question71",     null: false
    t.text    "question72",     null: false
    t.text    "question73",     null: false
    t.text    "question74",     null: false
    t.text    "question75",     null: false
    t.text    "question76",     null: false
    t.text    "question77",     null: false
    t.text    "question78",     null: false
    t.text    "question79",     null: false
    t.text    "question80",     null: false
    t.text    "question81",     null: false
    t.text    "question82",     null: false
    t.text    "question83",     null: false
    t.text    "question84",     null: false
    t.text    "question85",     null: false
    t.text    "question86",     null: false
    t.text    "question87",     null: false
    t.text    "question88",     null: false
    t.text    "question89",     null: false
    t.text    "question90",     null: false
    t.text    "question91",     null: false
    t.text    "question92",     null: false
    t.text    "question93",     null: false
    t.text    "question94",     null: false
    t.text    "question95",     null: false
    t.text    "question96",     null: false
    t.text    "question97",     null: false
    t.text    "question98",     null: false
    t.text    "question99",     null: false
    t.text    "question100",    null: false
    t.index ["unique_code_id"], name: "index_actual_answers_on_unique_code_id", using: :btree
  end

  create_table "bank_of_questions", force: :cascade do |t|
    t.text     "question",       null: false
    t.text     "correct_answer", null: false
    t.integer  "teacher_id",     null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "possible_answers", force: :cascade do |t|
    t.integer  "bank_of_question_id", null: false
    t.string   "answer1",             null: false
    t.string   "answer2",             null: false
    t.string   "answer3",             null: false
    t.string   "answer4",             null: false
    t.string   "answer5",             null: false
    t.string   "answer6",             null: false
    t.string   "answer7",             null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["bank_of_question_id"], name: "index_possible_answers_on_bank_of_question_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "teacher_id",       null: false
    t.text     "question1",        null: false
    t.text     "question2",        null: false
    t.text     "question3",        null: false
    t.text     "question4",        null: false
    t.text     "question5",        null: false
    t.text     "question6",        null: false
    t.text     "question7",        null: false
    t.text     "question8",        null: false
    t.text     "question9",        null: false
    t.text     "question10",       null: false
    t.text     "question11",       null: false
    t.text     "question12",       null: false
    t.text     "question13",       null: false
    t.text     "question14",       null: false
    t.text     "question15",       null: false
    t.text     "question16",       null: false
    t.text     "question17",       null: false
    t.text     "question18",       null: false
    t.text     "question19",       null: false
    t.text     "question20",       null: false
    t.text     "question21",       null: false
    t.text     "question22",       null: false
    t.text     "question23",       null: false
    t.text     "question24",       null: false
    t.text     "question25",       null: false
    t.text     "question26",       null: false
    t.text     "question27",       null: false
    t.text     "question28",       null: false
    t.text     "question29",       null: false
    t.text     "question30",       null: false
    t.text     "question31",       null: false
    t.text     "question32",       null: false
    t.text     "question33",       null: false
    t.text     "question34",       null: false
    t.text     "question35",       null: false
    t.text     "question36",       null: false
    t.text     "question37",       null: false
    t.text     "question38",       null: false
    t.text     "question39",       null: false
    t.text     "question40",       null: false
    t.text     "question41",       null: false
    t.text     "question42",       null: false
    t.text     "question43",       null: false
    t.text     "question44",       null: false
    t.text     "question45",       null: false
    t.text     "question46",       null: false
    t.text     "question47",       null: false
    t.text     "question48",       null: false
    t.text     "question49",       null: false
    t.text     "question50",       null: false
    t.text     "question51",       null: false
    t.text     "question52",       null: false
    t.text     "question53",       null: false
    t.text     "question54",       null: false
    t.text     "question55",       null: false
    t.text     "question56",       null: false
    t.text     "question57",       null: false
    t.text     "question58",       null: false
    t.text     "question59",       null: false
    t.text     "question60",       null: false
    t.text     "question61",       null: false
    t.text     "question62",       null: false
    t.text     "question63",       null: false
    t.text     "question64",       null: false
    t.text     "question65",       null: false
    t.text     "question66",       null: false
    t.text     "question67",       null: false
    t.text     "question68",       null: false
    t.text     "question69",       null: false
    t.text     "question70",       null: false
    t.text     "question71",       null: false
    t.text     "question72",       null: false
    t.text     "question73",       null: false
    t.text     "question74",       null: false
    t.text     "question75",       null: false
    t.text     "question76",       null: false
    t.text     "question77",       null: false
    t.text     "question78",       null: false
    t.text     "question79",       null: false
    t.text     "question80",       null: false
    t.text     "question81",       null: false
    t.text     "question82",       null: false
    t.text     "question83",       null: false
    t.text     "question84",       null: false
    t.text     "question85",       null: false
    t.text     "question86",       null: false
    t.text     "question87",       null: false
    t.text     "question88",       null: false
    t.text     "question89",       null: false
    t.text     "question90",       null: false
    t.text     "question91",       null: false
    t.text     "question92",       null: false
    t.text     "question93",       null: false
    t.text     "question94",       null: false
    t.text     "question95",       null: false
    t.text     "question96",       null: false
    t.text     "question97",       null: false
    t.text     "question98",       null: false
    t.text     "question99",       null: false
    t.text     "question100",      null: false
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "duration_minutes"
    t.boolean  "pass_fail",        null: false
    t.integer  "pass_fail_score"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "unique_codes", force: :cascade do |t|
    t.string   "unique_code", null: false
    t.integer  "student_id",  null: false
    t.integer  "test_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "teacher"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
