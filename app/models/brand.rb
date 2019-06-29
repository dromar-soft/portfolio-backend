# frozen_string_literal: true

# Brand model Class
class Brand < ApplicationRecord
  has_many :lures
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true
end
