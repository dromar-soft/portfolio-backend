# frozen_string_literal: true

# Fish model create migration
class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name

      t.timestamps
    end
  end
end
