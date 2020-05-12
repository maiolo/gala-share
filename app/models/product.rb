class Product < ApplicationRecord
  belongs_to :user
  has_many :deals

  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :photos, presence: true
  validates :deal_type, presence: true, inclusion: { in: ['Buy', 'Rent'] }
end
