class CompanyPolicy < ApplicationRecord
  belongs_to :company
  validates :max_price_train, presence: true, numericality: { greater_than: 0 }
  validates :max_price_hotel, presence: true, numericality: { greater_than: 0 }
  validates :max_price_car, presence: true, numericality: { greater_than: 0 }
end
