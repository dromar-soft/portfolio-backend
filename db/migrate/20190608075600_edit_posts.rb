class EditPosts < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      t.rename :size, :size_millimeter
      t.rename :weight, :weight_gram
    end
  end
end
