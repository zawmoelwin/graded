class CreatePossibleAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :possible_answers do |t|
      t.references(:bank_of_question, {null:false})
      create_multiple_columns(7, t)
      t.timestamps({null:false})
    end
  end

  def create_multiple_columns(number_of_columns, t)
    1.upto(number_of_columns) do |num|
      t.string( "possible_answer#{num}".to_sym)
    end
  end
end
