# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# teachers
User.create(name:"James", email:"j@gmail.com", password:'123456', teacher:true)
User.create(name:"Hunter", email:"h@gmail.com", password:'123456', teacher:true)

# students
User.create(name:"Zaw", email:"z@gmail.com", password:'123456', teacher:false)
User.create(name:"Hussein", email:"ha@gmail.com", password:'123456', teacher:false)
User.create(name:"Shaun", email:"s@gmail.com", password:'123456', teacher:false)
User.create(name:"Govind", email:"g@gmail.com", password:'123456', teacher:false)

Test.create(name:"Test on Obtuse Angles", teacher_id: 1, question1:1, question2:2, question3:3, pass_fail:false)
Test.create(name:"Test on Right Angles", teacher_id: 1, question1:2, question2:3, question3:4, pass_fail:false)
Test.create(name:"Human Anatomy", teacher_id: 1, question1:6, question2:5, question3:4, pass_fail:false)

BankOfQuestion.create(question:Faker::Lorem.sentence, correct_answer:Faker::Lorem.sentence, teacher_id:1)
BankOfQuestion.create(question:Faker::Lorem.sentence, correct_answer:Faker::Lorem.sentence, teacher_id:1)
BankOfQuestion.create(question:Faker::Lorem.sentence, correct_answer:Faker::Lorem.sentence, teacher_id:1)
BankOfQuestion.create(question:Faker::Lorem.sentence, correct_answer:Faker::Lorem.sentence, teacher_id:2)
BankOfQuestion.create(question:Faker::Lorem.sentence, correct_answer:Faker::Lorem.sentence, teacher_id:2)
BankOfQuestion.create(question:"How many fingers on a hand?", correct_answer:"5", teacher_id:1)

UniqueCode.create(unique_code:'123456', test_id:3, student_id:4)
UniqueCode.create(unique_code:'123336', test_id:3, student_id:2)
UniqueCode.create(unique_code:'123446', test_id:3, student_id:1)
UniqueCode.create(unique_code:'123446', test_id:3, student_id:6)

PossibleAnswer.create(bank_of_question_id:6, possible_answer1:"5",possible_answer2:"55",possible_answer3:"555",possible_answer4:"5555")
PossibleAnswer.create(bank_of_question_id:5, possible_answer1:"5",possible_answer2:"55",possible_answer3:"555",possible_answer4:"5555")
PossibleAnswer.create(bank_of_question_id:4, possible_answer1:"5",possible_answer2:"55",possible_answer3:"555",possible_answer4:"5555")
PossibleAnswer.create(bank_of_question_id:3, possible_answer1:"5",possible_answer2:"55",possible_answer3:"555",possible_answer4:"5555")

ActualAnswer.create(unique_code_id:1,answer_to_question1:'5',answer_to_question2:"53535")
ActualAnswer.create(unique_code_id:4,answer_to_question1:'5',answer_to_question2:"53535")

Course.create(name:"Math101",teacher_id:1)

