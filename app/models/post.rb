class Post < ApplicationRecord
  validates :datetime, {presence: true}
  validates :fish_id, {presence: true}
  validates :place, {presence: true}
  validates :image_name, {presence: true}
  validates :user_id, {presence: true}
end
