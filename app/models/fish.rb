# frozen_string_literal: true

# Fish model
class Fish < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
