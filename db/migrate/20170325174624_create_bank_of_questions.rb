class CreateBankOfQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_of_questions do |t|
      t.text(:question, {null:false})
      t.text(:correct_answer, {null:false})
      t.integer(:teacher_id, {null:false})
      t.timestamps({null:false})
    end
  end
end
