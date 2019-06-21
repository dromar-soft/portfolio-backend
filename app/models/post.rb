class Post < ApplicationRecord
  validates :datetime, {presence: true}
  validates :fish_id, {presence: true}
  validates :place, {presence: true}
  # validates :image_name, {presence: true}
  validates :user_id, {presence: true}

  include ImageUploader::Attachment.new(:image)  # Not [:image_data]

  def get_size_by_centimeter
    if self.size_millimeter
      return self.size_millimeter / 10
    else
      return 0
    end
  end

  def set_size_by_centimeter(centimeterValue)
    self.size_millimeter  = centimeterValue * 10
  end
end
