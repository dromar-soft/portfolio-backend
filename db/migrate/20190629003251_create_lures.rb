class CreateLures < ActiveRecord::Migration[5.2]
  def change
    create_table :lures do |t|
      t.string :name
      t.string :color
      t.string :image_name
      t.integer :brand_id
      t.integer :lure_type_id

      t.timestamps
    end
  end
end
