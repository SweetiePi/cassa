class AddImageToRectangles < ActiveRecord::Migration
  def change
    add_column :rectangles, :images, :string
  end
end
