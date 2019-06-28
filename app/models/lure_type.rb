# frozen_string_literal: true

# LureType model cLass
class LureType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end