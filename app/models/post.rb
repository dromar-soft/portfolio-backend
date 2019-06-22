# frozen_string_literal:true

# Post model class
class Post < ApplicationRecord
  validates :datetime, presence: true
  validates :fish_id, presence: true
  validates :place, presence: true
  validates :user_id, presence: true

  include ImageUploader::Attachment.new(:image) # Not [:image_data]

  def size_centimeter
    return unless size_millimeter?

    size_millimeter / 10
  end
end
