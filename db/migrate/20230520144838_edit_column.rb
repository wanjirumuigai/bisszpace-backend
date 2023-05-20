class EditColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :spaces, :leased_by_id, :integer, :null => false, :default => nil
  end
end
