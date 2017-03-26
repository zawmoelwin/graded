class CreateActualAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :actual_answers do |t|
      t.references(:unique_code, {null:false})
      create_multiple_columns(100,t)
    end
  end

  def create_multiple_columns(number_of_columns, t)
    1.upto(number_of_columns) do |num|
      t.text( "answer_to_question#{num}".to_sym)
    end
  end
end
