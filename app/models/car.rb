class Car < ApplicationRecord
  has_many :packages, dependent: :destroy
  validates :price, presence: true, numericality: { greater_than: 0 }
end
