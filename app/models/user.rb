class User < ApplicationRecord
  has_secure_password
  validates :name, {presence: true}
  validates_uniqueness_of :name
  validates :email, {presence: true}
  validates_uniqueness_of :email
end
