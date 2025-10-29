class CreateImmunisations < ActiveRecord::Migration[8.1]
  def change
    create_table :immunisations do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :vaccine, null: false, foreign_key: true
      t.date :administered_on
      t.string :administered_by
      t.string :batch_number
      t.date :next_due_date

      t.timestamps
    end
  end
end
