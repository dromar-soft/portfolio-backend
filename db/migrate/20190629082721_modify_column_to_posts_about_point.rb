class ModifyColumnToPostsAboutPoint < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :place, :string
    add_reference :posts, :point
  end
end
