class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :size
      t.string :image_url
      t.string :location
      t.string :space_type
      t.integer :lease_cost
      t.boolean :is_taken, :null => false, :default => false
      t.integer :user_id
      t.integer :leased_by_id, :null => false, :default => 0

      t.timestamps
    end
  end
end
