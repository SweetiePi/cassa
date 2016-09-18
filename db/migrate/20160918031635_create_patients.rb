class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.date :dateofbirth
      t.string :status
      t.string :medication
      t.string :emergencycontact

      t.timestamps null: false
    end
  end
end
