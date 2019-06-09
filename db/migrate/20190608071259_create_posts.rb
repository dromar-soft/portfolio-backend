class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.datetime :datetime
      t.integer :fish_id
      t.integer :size_millimeter
      t.integer :weight_gram
      t.string :place
      t.string :image_name
      t.string :method
      t.integer :user_id
      t.timestamps
    end
  end
end
