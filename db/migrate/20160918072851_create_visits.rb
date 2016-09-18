class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :id_num
      t.string :practitioner_name
      t.string :specialty
      t.date :dateofvisit
      t.string :comments

      t.timestamps null: false
    end
  end
end
