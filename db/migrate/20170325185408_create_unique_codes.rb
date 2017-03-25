class CreateUniqueCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :unique_codes do |t|
      t.string(:unique_code, {null:false})
      t.integer(:student_id, {null:false})
      t.integer(:test_id, {null:false})
      t.timestamps({null:false})
    end
  end
end
