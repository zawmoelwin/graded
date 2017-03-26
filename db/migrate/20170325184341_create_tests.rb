class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :name, {null:false}
      t.integer(:teacher_id, {null:false})
      create_multiple_columns(100,t)
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :duration_minutes
      t.boolean :pass_fail, {null:false}
      t.integer :pass_fail_score
      t.timestamps({null:false})
    end
  end

  def create_multiple_columns(number_of_columns, t)
    1.upto(number_of_columns) do |num|
      t.integer( "question#{num}".to_sym)
    end
  end
end
