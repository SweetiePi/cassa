class RenameRectanglesToUsers < ActiveRecord::Migration
  def change
    rename_table :rectangles, :patients
  end
end
