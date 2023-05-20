class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :size
      t.string :image_url
      t.string :location
      t.string :type
      t.integer :lease-cost
      t.boolean :is_taken
      t.integer :user_id
      t.integer :leased_by_id

      t.timestamps
    end
  end
end
