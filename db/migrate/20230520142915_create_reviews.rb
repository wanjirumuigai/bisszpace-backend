class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :user_id
      t.integer :space_id

      t.timestamps
    end
  end
end
