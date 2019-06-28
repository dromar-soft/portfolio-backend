# frozen_string_literal: true

# Brand model Class
class Brand < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true
end
