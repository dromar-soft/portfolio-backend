# frozen_string_literal: true

# Lure model class
class Lure < ApplicationRecord
  has_many :posts
  belongs_to :brand
  belongs_to :lure_type
  validates :name, presence: true
  validates :lure_type_id, presence: true
  validates :brand_id, presence: true
end
