class ChangeSizeWeightTypesToPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :size_millimeter, :integer
    change_column :posts, :weight_gram, :integer
  end
end
