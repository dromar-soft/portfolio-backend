# frozen_string_literal:true

# Post model class
class Post < ApplicationRecord
  belongs_to :lure
  belongs_to :point
  validates :datetime, presence: true
  validates :fish_id, presence: true
  validates :point_id, presence: true
  validates :user_id, presence: true

  include ImageUploader::Attachment.new(:image) # Not [:image_data]

  def size_centimeter
    return unless size_millimeter?

    size_millimeter / 10
  end

  def fish_name
    fish = Fish.find_by(id: fish_id)
    return '不明' if fish.nil?

    fish.name
  end

  def common_field_posts
    same_field_points = Point.where(field_id: point.field_id)
    point_ids = []
    same_field_points.each do |point|
      point_ids.push(point.id)
    end
    Post.where(point_id: point_ids).where.not(id: id)
  end
end
