# frozen_string_literal: true

# LureType model cLass
class LureType < ApplicationRecord
  has_many :lures
  validates :name, presence: true, uniqueness: true
end
