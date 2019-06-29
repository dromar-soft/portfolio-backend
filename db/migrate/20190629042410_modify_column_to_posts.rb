class ModifyColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :method, :string
    add_reference :posts, :lure
  end
end
