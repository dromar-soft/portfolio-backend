# frozen_string_literal: true

# Field model Class
class Field < ApplicationRecord
  validates :name, presence: true
end
