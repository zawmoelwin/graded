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
    t.integer "unique_code_id",        null: false
    t.text    "answer_to_question1"
    t.text    "answer_to_question2"
    t.text    "answer_to_question3"
    t.text    "answer_to_question4"
    t.text    "answer_to_question5"
    t.text    "answer_to_question6"
    t.text    "answer_to_question7"
    t.text    "answer_to_question8"
    t.text    "answer_to_question9"
    t.text    "answer_to_question10"
    t.text    "answer_to_question11"
    t.text    "answer_to_question12"
    t.text    "answer_to_question13"
    t.text    "answer_to_question14"
    t.text    "answer_to_question15"
    t.text    "answer_to_question16"
    t.text    "answer_to_question17"
    t.text    "answer_to_question18"
    t.text    "answer_to_question19"
    t.text    "answer_to_question20"
    t.text    "answer_to_question21"
    t.text    "answer_to_question22"
    t.text    "answer_to_question23"
    t.text    "answer_to_question24"
    t.text    "answer_to_question25"
    t.text    "answer_to_question26"
    t.text    "answer_to_question27"
    t.text    "answer_to_question28"
    t.text    "answer_to_question29"
    t.text    "answer_to_question30"
    t.text    "answer_to_question31"
    t.text    "answer_to_question32"
    t.text    "answer_to_question33"
    t.text    "answer_to_question34"
    t.text    "answer_to_question35"
    t.text    "answer_to_question36"
    t.text    "answer_to_question37"
    t.text    "answer_to_question38"
    t.text    "answer_to_question39"
    t.text    "answer_to_question40"
    t.text    "answer_to_question41"
    t.text    "answer_to_question42"
    t.text    "answer_to_question43"
    t.text    "answer_to_question44"
    t.text    "answer_to_question45"
    t.text    "answer_to_question46"
    t.text    "answer_to_question47"
    t.text    "answer_to_question48"
    t.text    "answer_to_question49"
    t.text    "answer_to_question50"
    t.text    "answer_to_question51"
    t.text    "answer_to_question52"
    t.text    "answer_to_question53"
    t.text    "answer_to_question54"
    t.text    "answer_to_question55"
    t.text    "answer_to_question56"
    t.text    "answer_to_question57"
    t.text    "answer_to_question58"
    t.text    "answer_to_question59"
    t.text    "answer_to_question60"
    t.text    "answer_to_question61"
    t.text    "answer_to_question62"
    t.text    "answer_to_question63"
    t.text    "answer_to_question64"
    t.text    "answer_to_question65"
    t.text    "answer_to_question66"
    t.text    "answer_to_question67"
    t.text    "answer_to_question68"
    t.text    "answer_to_question69"
    t.text    "answer_to_question70"
    t.text    "answer_to_question71"
    t.text    "answer_to_question72"
    t.text    "answer_to_question73"
    t.text    "answer_to_question74"
    t.text    "answer_to_question75"
    t.text    "answer_to_question76"
    t.text    "answer_to_question77"
    t.text    "answer_to_question78"
    t.text    "answer_to_question79"
    t.text    "answer_to_question80"
    t.text    "answer_to_question81"
    t.text    "answer_to_question82"
    t.text    "answer_to_question83"
    t.text    "answer_to_question84"
    t.text    "answer_to_question85"
    t.text    "answer_to_question86"
    t.text    "answer_to_question87"
    t.text    "answer_to_question88"
    t.text    "answer_to_question89"
    t.text    "answer_to_question90"
    t.text    "answer_to_question91"
    t.text    "answer_to_question92"
    t.text    "answer_to_question93"
    t.text    "answer_to_question94"
    t.text    "answer_to_question95"
    t.text    "answer_to_question96"
    t.text    "answer_to_question97"
    t.text    "answer_to_question98"
    t.text    "answer_to_question99"
    t.text    "answer_to_question100"
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
    t.string   "possible_answer1"
    t.string   "possible_answer2"
    t.string   "possible_answer3"
    t.string   "possible_answer4"
    t.string   "possible_answer5"
    t.string   "possible_answer6"
    t.string   "possible_answer7"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["bank_of_question_id"], name: "index_possible_answers_on_bank_of_question_id", using: :btree
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name",             null: false
    t.integer  "teacher_id",       null: false
    t.integer  "question1"
    t.integer  "question2"
    t.integer  "question3"
    t.integer  "question4"
    t.integer  "question5"
    t.integer  "question6"
    t.integer  "question7"
    t.integer  "question8"
    t.integer  "question9"
    t.integer  "question10"
    t.integer  "question11"
    t.integer  "question12"
    t.integer  "question13"
    t.integer  "question14"
    t.integer  "question15"
    t.integer  "question16"
    t.integer  "question17"
    t.integer  "question18"
    t.integer  "question19"
    t.integer  "question20"
    t.integer  "question21"
    t.integer  "question22"
    t.integer  "question23"
    t.integer  "question24"
    t.integer  "question25"
    t.integer  "question26"
    t.integer  "question27"
    t.integer  "question28"
    t.integer  "question29"
    t.integer  "question30"
    t.integer  "question31"
    t.integer  "question32"
    t.integer  "question33"
    t.integer  "question34"
    t.integer  "question35"
    t.integer  "question36"
    t.integer  "question37"
    t.integer  "question38"
    t.integer  "question39"
    t.integer  "question40"
    t.integer  "question41"
    t.integer  "question42"
    t.integer  "question43"
    t.integer  "question44"
    t.integer  "question45"
    t.integer  "question46"
    t.integer  "question47"
    t.integer  "question48"
    t.integer  "question49"
    t.integer  "question50"
    t.integer  "question51"
    t.integer  "question52"
    t.integer  "question53"
    t.integer  "question54"
    t.integer  "question55"
    t.integer  "question56"
    t.integer  "question57"
    t.integer  "question58"
    t.integer  "question59"
    t.integer  "question60"
    t.integer  "question61"
    t.integer  "question62"
    t.integer  "question63"
    t.integer  "question64"
    t.integer  "question65"
    t.integer  "question66"
    t.integer  "question67"
    t.integer  "question68"
    t.integer  "question69"
    t.integer  "question70"
    t.integer  "question71"
    t.integer  "question72"
    t.integer  "question73"
    t.integer  "question74"
    t.integer  "question75"
    t.integer  "question76"
    t.integer  "question77"
    t.integer  "question78"
    t.integer  "question79"
    t.integer  "question80"
    t.integer  "question81"
    t.integer  "question82"
    t.integer  "question83"
    t.integer  "question84"
    t.integer  "question85"
    t.integer  "question86"
    t.integer  "question87"
    t.integer  "question88"
    t.integer  "question89"
    t.integer  "question90"
    t.integer  "question91"
    t.integer  "question92"
    t.integer  "question93"
    t.integer  "question94"
    t.integer  "question95"
    t.integer  "question96"
    t.integer  "question97"
    t.integer  "question98"
    t.integer  "question99"
    t.integer  "question100"
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
    t.string   "name"
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
