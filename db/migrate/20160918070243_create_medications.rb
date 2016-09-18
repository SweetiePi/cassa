class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :dosage
      t.integer :duration
      t.date :startdate
      t.string :sideeffects
      t.string :purpose
      t.string :comments

      t.timestamps null: false
    end
  end
end
