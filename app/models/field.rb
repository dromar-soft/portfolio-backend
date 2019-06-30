# frozen_string_literal: true

# Field model Class
class Field < ApplicationRecord
  has_many :points
  validates :name, presence: true
end
