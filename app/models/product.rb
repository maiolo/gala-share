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

  include PgSearch::Model

  pg_search_scope :search_in_products,
    against: [:name, :description, :size],
    using: {
      tsearch: { prefix: true }
    }
end
