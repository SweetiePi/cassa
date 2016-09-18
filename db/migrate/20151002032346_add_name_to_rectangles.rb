class AddNameToRectangles < ActiveRecord::Migration
  def change
    add_column :rectangles, :name, :string
  end
end
