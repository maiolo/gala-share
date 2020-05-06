class Product < ApplicationRecord
  belongs_to :user

  validades :name, presence: true
  validates :description, presence: true
  validades :price, presence: true
  validates :size, presence: true
end
