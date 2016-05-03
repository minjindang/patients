class CreateViewedCounts < ActiveRecord::Migration
  def change
    create_table :viewed_counts do |t|
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
