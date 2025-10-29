class CreateVaccines < ActiveRecord::Migration[8.1]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.string :manufacturer
      t.integer :dose_number
      t.integer :schedule_interval

      t.timestamps
    end
  end
end
