class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :created_tests, class_name: "Test", foreign_key: :teacher_id
has_many :courses, foreign_key: :teacher_id
has_many :bank_of_questions
has_many  :unique_codes , foreign_key: :student_id
has_many :taking_tests,  through: :unique_codes, source: :test

end
