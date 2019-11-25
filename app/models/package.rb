class Package < ApplicationRecord
  belongs_to :hotel
  belongs_to :train
  belongs_to :car
  has_many :bookings
  validates :hotel, presence: true
  validates :car, presence: true
  validates :train, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :dep_city, presence: true
  validates :arr_city, presence: true
end
