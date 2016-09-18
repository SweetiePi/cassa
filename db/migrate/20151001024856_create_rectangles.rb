class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.integer :width
      t.integer :height
      t.string :color

      t.timestamps null: false
    end
  end
end
