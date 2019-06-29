# frozen_string_literal: true

# Point model class
class Point < ApplicationRecord
  has_many :posts
  belongs_to :field
  validates :name, presence: true, uniqueness: true
  validates :field_id, presence: true

  def fullname
    field.name + ' ' + name
  end
end
