class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :spaces, :type, :space_type
  end
end
