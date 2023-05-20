class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    change_column :spaces, :type, :string
  end
end
