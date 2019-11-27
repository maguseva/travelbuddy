class Package < ApplicationRecord
  belongs_to :hotel
  belongs_to :train_to, class_name: "Train"
  belongs_to :train_from, class_name: "Train"
  belongs_to :car
  has_many :bookings
  validates :hotel, presence: true
  validates :car, presence: true
  validates :train_from, presence: true
  validates :train_to, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :dep_city, presence: true
  validates :arr_city, presence: true
end
