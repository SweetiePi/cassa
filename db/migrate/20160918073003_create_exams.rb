class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :id_nim
      t.string :examtype
      t.date :examdate
      t.string :status
      t.string :comments

      t.timestamps null: false
    end
  end
end
