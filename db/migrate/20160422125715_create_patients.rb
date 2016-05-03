class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :First_name
      t.string :Middle_name
      t.string :Last_name
      t.string :Medical_Record_number
      t.string :Date_of_birth
      t.string :Gender
      t.string :Status
      t.string :Location

      t.timestamps null: false
    end
  end
end
